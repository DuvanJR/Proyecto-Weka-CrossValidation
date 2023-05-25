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
        
    }

    public static double decisionNaiveBayes(String gender, double age, double hypertension, double heart_disease,
            String ever_married, String work_type, String Residence_type,
            double avg_glucose_level, String smoking_status) throws Exception {

        
        ConverterUtils.DataSource source = new DataSource("algoritmo/NaiveBayes/cerebrovascular.arff");

        
        Instances dataset = source.getDataSet();

       
        dataset.setClassIndex(dataset.numAttributes() - 1);

        
        NaiveBayes tree = new NaiveBayes();

        
        Evaluation eval = new Evaluation(dataset);
        eval.crossValidateModel(tree, dataset, 10, new java.util.Random(1));

        
        tree.buildClassifier(dataset);
        System.out.println(tree.toString());

        
        Instance instance = new DenseInstance(10);

        
        instance.setDataset(dataset);

        
        instance.setValue(0, gender);
        instance.setValue(1, age);
        instance.setValue(2, hypertension);
        instance.setValue(3, heart_disease);
        instance.setValue(4, ever_married);
        instance.setValue(5, work_type);
        instance.setValue(6, Residence_type);
        instance.setValue(7, avg_glucose_level);
        instance.setValue(8, smoking_status);

       
        int result = (int) eval.evaluateModelOnce(tree, instance);
        
        System.out.println(eval.toSummaryString("\nResults\n=======\n", false));

        System.out.println("Resultado de clasificar la nueva instancia: " + result);
        String msj = "";
        if (result == 0) {
            msj = "el paciente NO tuvo un accidente cerebrovascular! ";
        } else if (result == 1) {
            msj = "SI, el paciente tuvo un accidente cerebrovascular ";
        }
        System.out.println("Resultado de clasificar la nueva instancia: " + msj);

        
        return result;
    }

}
