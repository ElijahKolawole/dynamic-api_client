import java.io.FileOutputStream;  
  
import javax.xml.bind.JAXBContext;  
import javax.xml.bind.Marshaller;  
  
  
public class UserResponseToXml.java {  
public static void main(String[] args) throws Exception{  
    JAXBContext contextObj = JAXBContext.newInstance(Question.class);  
  
    Marshaller marshallerObj = contextObj.createMarshaller();  
    marshallerObj.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);  
  
    Question q1=new Employee(1,"Vimal Jaiswal",50000);  
      
    marshallerObj.marshal(emp1, new FileOutputStream("question_response.xml"));  
       
}  
}  