import javax.xml.bind.annotation.XmlAttribute;  
import javax.xml.bind.annotation.XmlElement;  
import javax.xml.bind.annotation.XmlRootElement;  
import java.util.ArrayList;

  
@XmlRootElement  
public class Question {  
    private int id;
    private String question;  
    private String description;  
    private String response;  
    private ArrayList<Question> questions;
  
public Question() {}  
public Question(int id, String question, String description, String response) {  
    this.id = id;
    this.question = question;  
    this.description = description;  
    this.response = response;  
    questions = new ArrayList();
}  
@XmlAttribute  
public int getId() {  
    return id;  
}  
public void setId(int id) {  
    this.id = id;  
}  
@XmlElement  
public String getQuestion() {  
    return question;  
}  
public void setQuestion(String question) {  
    this.question = question;  
}  
@XmlElement  
public String getDescription() {  
    return description;  
}  
public void setDescription(String description) {  
    this.description = description;  
} 

@XmlElement  
public String getResponse() {  
    return response;  
}  
public void setResponse(String response) {  
    this.response = response;  
} 
@Override
public String toString(){
    return "QUESTION: \n\tid: " + id + "\n\tquestion"+ question + "\n\tdescription: "+ description+  "\n\tresponse:"+ respones;
}
}  