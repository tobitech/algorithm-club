<?php
/**
 * Created by PhpStorm.
 * User: Doraemon
 * Date: 11/27/2018
 * Time: 11:50 AM
 */


makeFuzzBuzz("ANT");


function makeFuzzBuzz($number){
    if(is_numeric($number)){
        if($number % 3 == 0 && $number % 5 == 0)
            print_r("FUZZBUZZ");
        elseif($number % 3 == 0)
            print_r("FUZZ");
        elseif($number % 5 ==  0)
            print_r("BUZZ");
        else
            print_r("Not Divisible by 3 or 5");
    }else
        print_r("Not A Number");
}