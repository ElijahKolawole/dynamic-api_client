// jdk1.4.1
import javax.xml.transform.*;
import java.net.*;
import java.io.*;

public class Data {
public static void main(String[] args) {
  try {

    TransformerFactory tFactory = TransformerFactory.newInstance();

    Transformer transformer =
      tFactory.newTransformer
         (new javax.xml.transform.stream.StreamSource
            ("data.xsl"));

    transformer.transform
      (new javax.xml.transform.stream.StreamSource
            ("data.xml"),
       new javax.xml.transform.stream.StreamResult
            ( new FileOutputStream("../pages/form.html")));
			System.out.println("Working");
    }
  catch (Exception e) {
    e.printStackTrace( );
    }
  }
}