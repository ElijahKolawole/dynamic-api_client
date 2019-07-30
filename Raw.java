// jdk1.4.1
import javax.xml.transform.*;
import java.net.*;
import java.io.*;

public class Raw {
public static void main(String[] args) {
  try {

    TransformerFactory tFactory = TransformerFactory.newInstance();

    Transformer transformer =
      tFactory.newTransformer
         (new javax.xml.transform.stream.StreamSource
            ("raw.xsl"));

    transformer.transform
      (new javax.xml.transform.stream.StreamSource
            ("raw.xml"),
       new javax.xml.transform.stream.StreamResult
            ( new FileOutputStream("raw.html")));
			System.out.println("Working");
    }
  catch (Exception e) {
    e.printStackTrace( );
    }
  }
}