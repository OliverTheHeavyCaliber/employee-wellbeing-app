<?php

namespace App\Http\Controllers;

use App\Models\Response;
use App\Models\Testing;
use App\Models\EmployeeRecommendation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class StatisticsController extends Controller
{
     public function reactApp()
    {
         if(Auth::user()){
        
            $user_name = Auth::user()->fullname;
            $user_id = Auth::user()->id;
   echo $user_name;
        

        $user = Auth::user()->id; // This reds user id from Responses table. User is posible ti auticatre with Auth::user()
       
    
        $testing = request('testing');
        
        //Testing::  where('id', 'like', '%' . $searchString . '%')->get();
        //Testing::findOrFail($id)->id; // This reeds testing_id from Responses table.
        $response= Response::all();
        //Manegent to select particular user witg {$id}. see how to get an imput for that with foorm.
        
        $sum =0;
   {
        foreach( $response as $response){
            if($response->user_id == $user && $response->testing_id == $testing){
            $sum +=$response->answer;}
        
        };
       
        $score = $sum /7; 
        
        $recommendation = EmployeeRecommendation::all();
   
if($score){
        foreach($recommendation as $recomend){
          
          
          if($recomend->lower_limit <= $score && $recomend->upper_limit >= $score){
            $user_recommendation = $recomend->text;

           
          }
          echo $user_name;
        

        }
        return view('/statistics/statistics', compact('user_name', 'user_id','testing', 'user_recommendation' )); 
    
    }
     


       //The all questions mut be fulfill. It they are not, that data dont go in db.
       
        return view('/statistics/statistics', compact('user_name', 'user_id','testing' )); 

    }
};
    }
    public function answers(Request $request){
        return $request->input();
}
}