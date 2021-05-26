/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id],
      case a.[Reason]
				when 0 then 'Yanl�� numara'
				when 1 then 'Telefonu kapatt�'
				when 2 then 'Telefona cevap vermedi'
				when 3 then 'Anket yapmay� reddetti'
				when 5 then 'Eksik numara'
				when 6 then 'Numara me�gul'
				when 7 then 'Telefonu kapal�'
				when 9 then 'Vatanda�/hizmet bilgisi hatal�'
				when 11 then 'Yetkili ki�i yok'
				when 13 then 'Hat kesildi'
				when 14 then 'M�sait de�il'
				else  'Ba�ar�l�'
	      end as Sonu�_Kodu,
      [KurumAdi] as Kurum_Ad�,
      case a.[Gender]
				when 1 then 'Kad�n'
				when 2 then 'Erkek'
		  end as Cinsiyet,
      [BasvuruYeri],
      case a.[Status]
				when 1 then 'Ba�ar�l� Anket'
				when 2 then 'Ask�da'
				when 3 then '��lemde'
				when 4 then 'Ba�ar�s�z Anket'
				when 0 then 'Yeni Veri'
				else 'HATA' end as Status,
      [IsDeleted]
  FROM [SYMvePersonelSabimAnket].[dbo].[SYMPatients] a
  where a.[IsDeleted] like 0 and [CallTime] is NOT NULL 