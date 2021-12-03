import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/*=========================================================
 * Integrante 1: Filipe Rodrigues Batista de Oliveira - 2018055091
 * Integrante 2: Heitor Damasceno - 2019006671
 * ========================================================*/
public class Main {

    public static void main(String[] args) throws FileNotFoundException {
    	
    	File folder = new File("testes/");
    	File[] listOfFiles = folder.listFiles();
    	
    	int contador = 0;
    	int n_sucessos = 0;
        for(File f:listOfFiles) {
	        try {
	        	contador += 1;
	        	System.out.println("---------------------------TESTE "+contador+"----------------------------------");
	        	System.out.println("Arquivo: "+f.getCanonicalPath());
	        	System.out.println("---------------------------CODIGO-----------------------------------");
	        	lerArquivo(f);
	        	System.out.println("-------------------------------------------------------------------");
	            Parser parser = new Parser(new Lexer(new FileReader(f.getAbsoluteFile())));
	            parser.parse();
	            n_sucessos += 1;
	            System.out.println("-------------------------------------------------------------------");
	            System.out.println("Analise Sintatica: OK!");
	            System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
	        }catch (Exception e) {
	        	System.out.println("-------------------------------------------------------------------");
	            System.out.println("Analise Sintatica: ERRO!");
	            System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
	        }
        }
        System.out.println("-------------------------------------------------------------------");
        System.out.println("Numero de sucessos: "+n_sucessos);
    }
    
    public static void lerArquivo(File f) throws FileNotFoundException, IOException {
    	try (BufferedReader leitor = new BufferedReader(new FileReader(f))) {
		   String linha = null;
		   while ((linha = leitor.readLine()) != null) {
		       System.out.println(linha);
		   }
		}

    }
}