/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package algoritmo.NaiveBayes;

import weka.classifiers.Evaluation;
import weka.classifiers.bayes.NaiveBayes;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils;
import weka.core.converters.ConverterUtils.DataSource;

/**
 *
 * @author Usuario
 */
public class CrossValidation {

    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        /* Da que tiene */ //System.out.println(decisionJ48("Female",57.0,0,1,"No","Govt_job","Urban",217.08,"Unknown"));
        /* Da que tiene */ //System.out.println(decisionJ48("Male", 79, 1, 1, "Yes" , "Self-employed", "Urban", 208.3, "smokes"));
        /* Da que tiene */ //System.out.println(decisionJ48("Male",80,1,1,"Yes","Private","Urban",275.29,"formerly smoked"));
        //System.out.println(decisionJ48("Female", 27.0, 0.0, 0.0, "No", "Private", "Urban", 270.39, "formerly smoked"));
        /*Da que tiene*/  //System.out.println(decisionJ48("Female", 49, 1, 1, "Yes", "Private","Urban",174.43,"smokes"));
        //System.out.println(decisionJ48("Male",81,0,0,"Yes",	"Private","Urban",186.21,"formerly smoked"));
        /*Da qeue tiene*/ //System.out.println(decisionJ48("Male", 78, 0, 1, "Yes", "Private", "Urban", 219.84, "Unknown"));
        //Si el paciente tiene hipertension en 1, diabetes en 1 y la glucosa mayor q 200 da que tiene probabilidad de sufrir dun cerebrovascular
        //Diabetes mayor a 205 sale que puedes tener un accidente cerebrovascular
        /*Da qeue tiene*/ //System.out.println(decisionJ48("Male",51,1,1,"Yes","Govt_job","Urban",150.45,"Unknown"));
        /*Da qeue tiene*/ //System.out.println(decisionJ48("Female", 63, 1, 1, "No", "Govt_job", "Urban", 174.43, "never smoked"));
    }

    public static double decisionNaiveBayes(String gender, double age, double hypertension, double heart_disease,
            String ever_married, String work_type, String Residence_type,
            double avg_glucose_level, String smoking_status) throws Exception {

        //Carga el fichero del dataset e inicializa la fuente de datos
        ConverterUtils.DataSource source = new DataSource("algoritmo/NaiveBayes/cerebrovascular.arff");

        //Devuelve el conjunto de datos completo
        Instances dataset = source.getDataSet();

        //Indica a las instancias cual es la clase(decision), el último atributo (stroke)
        dataset.setClassIndex(dataset.numAttributes() - 1);

        //Crea nuevo objeto NaiveBayes
        NaiveBayes tree = new NaiveBayes();

        //Evalua el clasificador usando cross-validation con 10 folds y 1 semilla
        Evaluation eval = new Evaluation(dataset);
        eval.crossValidateModel(tree, dataset, 10, new java.util.Random(1));

        //Genera el clasificador a partir de las instancias del dataset
        tree.buildClassifier(dataset);
        System.out.println(tree.toString());

        //Clasifica una nueva instancia
        Instance instance = new DenseInstance(10);

        //Establece la referencia al conjunto de datos
        instance.setDataset(dataset);

        //Establece el valor de cada atributo según su índice
        instance.setValue(0, gender);
        instance.setValue(1, age);
        instance.setValue(2, hypertension);
        instance.setValue(3, heart_disease);
        instance.setValue(4, ever_married);
        instance.setValue(5, work_type);
        instance.setValue(6, Residence_type);
        instance.setValue(7, avg_glucose_level);
        instance.setValue(8, smoking_status);

        //Clasifica la nueva instancia dada
        int result = (int) eval.evaluateModelOnce(tree, instance);
        //String resultado = Integer.toString(result);
        //String tem = (eval.toSummaryString());
        //System.out.println(tem.getClass());
        System.out.println(eval.toSummaryString("\nResults\n=======\n", false));

        System.out.println("Resultado de clasificar la nueva instancia: " + result);
        String msj = "";
        if (result == 0) {
            msj = "el paciente NO tuvo un accidente cerebrovascular! ";
        } else if (result == 1) {
            msj = "SI, el paciente tuvo un accidente cerebrovascular ";
        }
        System.out.println("Resultado de clasificar la nueva instancia: " + msj);

        //Devuelve 0 = no - esta sano || 1 = Si tiene un accidente cerebro vascular;
        return result;
    }

}
