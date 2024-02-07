Feature: US1001 kullanici  istedigi urun icin arama yapabilmeli
  #Feature user story ile ayni seviyede kullanilir
  #birden fazla test case icerebilir
  #Test NG ye göre düsünürsek Faeture class,Senario ise test methoduna karsilik gelir
  Scenario: TC001 Kullanici phone icin arama yapabilmeli
    #Test case ile ayni seviyede kullanilir
    Given kullanici TestOtomasyon sayfasina gider
    And phone icin arama yapar
    Then aradigi urunun bulundugunu test eder
    And sayfayi kapatir

    Scenario:TC02 KULLANICI dress ICIN ARAMA YAPABILMELI
      Given kullanici TestOtomasyon sayfasina gider
      And dress  icin arama yapar
      Then aradigi urunun bulundugunu test eder
      And sayfayi kapatir
      Scenario: TC03 kullanici java icin sonuc bulamamali
      Given kullanici TestOtomasyon sayfasina gider
      And phone icin arama yapar
      Then aradigi urunun bulundugunu test eder
      And sayfayi kapatir