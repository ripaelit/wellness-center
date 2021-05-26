/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id],
      case a.[Reason]
				when 0 then 'Yanlýþ numara'
				when 1 then 'Telefonu kapattý'
				when 2 then 'Telefona cevap vermedi'
				when 3 then 'Anket yapmayý reddetti'
				when 5 then 'Eksik numara'
				when 6 then 'Numara meþgul'
				when 7 then 'Telefonu kapalý'
				when 9 then 'Vatandaþ/hizmet bilgisi hatalý'
				when 11 then 'Yetkili kiþi yok'
				when 13 then 'Hat kesildi'
				when 14 then 'Müsait deðil'
				else  'Baþarýlý'
	      end as Sonuç_Kodu,
      [KurumAdi] as Kurum_Adý,
      case a.[Gender]
				when 1 then 'Kadýn'
				when 2 then 'Erkek'
		  end as Cinsiyet,
      [BasvuruYeri],
      case a.[Status]
				when 1 then 'Baþarýlý Anket'
				when 2 then 'Askýda'
				when 3 then 'Ýþlemde'
				when 4 then 'Baþarýsýz Anket'
				when 0 then 'Yeni Veri'
				else 'HATA' end as Status,
      [IsDeleted]
  FROM [SYMvePersonelSabimAnket].[dbo].[SYMPatients] a
  where a.[IsDeleted] like 0 and [CallTime] is NOT NULL 