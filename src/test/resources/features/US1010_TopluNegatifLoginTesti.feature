Feature: US1010 kullanici verilen yanlis bilgilerle giris yapamaz
  Scenario Outline: TC18 yanlis bilgilerle giris yapilmadigini test eder

    Given kullanici "toUrl" anasayfaya gider
    Then account butonuna basar
    When email olarak "<SiradakiEmail>" girer
    And password olarak "<SiradakiPassword>" girer
    Then signIn butonuna basar
    And sisteme giris yapamadigini test eder
    And 1 saniye bekler
    Then sayfayi kapatir
Examples:
  |SiradakiEmail|                |SiradakiPassword|
  | banu@gmail.com|             | 898989         |
  | sedat@yahoo.com|            |989887          |
  |orkong@tmail.com|           | 122334         |
  | fatih@hotmail.com |         | 454545         |
  | arzu@senmail.com  |         | 676767         |
  |mehmet@mynet.com   |        | 878987         |