Feature: US1013 Kullanicilar toplu kayit olusturabilmeli
  Scenario Outline: TC21 KULLANICI VERILEN LISTEDEN KAYIT OLUSTURABILMELI
    When kullanici https://editor.datatables.net/ adresine gider
    Then new butonuna basar
    And tum bilgileri girer
    And Create tusuna basar
    When kullanici ilk isim ile arama yapar
    Then isim bolumunde isminin oldugunu dogrular