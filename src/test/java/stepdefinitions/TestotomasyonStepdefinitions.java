package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import utilities.ConfigReader;
import utilities.Driver;

import java.io.FileInputStream;

public class TestotomasyonStepdefinitions {
    @Given("kullanici TestOtomasyon sayfasina gider")
    public void kullanici_test_otomasyon_sayfasina_gider() {

        Driver.getDriver().get(ConfigReader.getProperty("toUrl"));
    }


    @Given("phone icin arama yapar")
    public void phone_icin_arama_yapar() {

    }

    @Then("aradigi urunun bulundugunu test eder")
    public void aradigi_urunun_bulundugunu_test_eder() {


    }

    @Then("urun excelindeki tum urunler icin arama yapip min miktarda urun oldugunu test eder")
    public void urunExcelindekiTumUrunlerIcinAramaYapipMinMiktardaUrunOldugunuTestEder() {
        // adimlari takip ederek excel'deki sayfaya ulas
        String dosyaYolu="src/test/resources/stok.xlsx";
        FileInputStream fileInputStream=new FileInputStream(dosyaYolu);
        Workbook workbook= WorkbookFactory.create(fileInputStream);
        Sheet sayfa2 =workbook.getSheet("Sayfa2");

       // exceldeki son satir sayisini bulup
        int sonSatirIndex =sayfa2.getLastRowNum();
      // bir loop ile urunu aratip min sayida urun bulundugunu test et
        boolean stoktaOlmayanVarMi =false;
        //bunu flag olarak kullanacagiz
        //eger stok miktarini tutturamayan olursa bunu true yapalim
        for (int i = 1; i <=sonSatirIndex ; i++) {
            //once i. indexteki urun ismini ve min urun sayisini exel den okuyup test edelim

        }
    }
}
