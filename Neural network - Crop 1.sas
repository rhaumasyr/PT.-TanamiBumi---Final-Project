﻿/*---------------------------------------------------------
  The options statement below should be placed
  before the data step when submitting this code.
---------------------------------------------------------*/
options VALIDMEMNAME=EXTEND VALIDVARNAME=ANY;
   /*------------------------------------------
   Generated SAS Scoring Code
     Date             : 29May2024:05:29:49
     Locale           : en_US
     Model Type       : Neural Network
     Interval variable: Annual_Rainfall
     Interval variable: Area
     Interval variable: Crop_Year
     Interval variable: Fertilizer
     Interval variable: Pesticide
     Class variable   : Crop
     Class variable   : Season
     Response variable: Crop
     ------------------------------------------*/
   /*---------------------------------------------------------

   SAS Code Generated by Cloud Analytic Services for Artificial Neural Network

     Date                  : 29May2024:09:29:49 UTC
     Response variable      : Crop
     Number of nodes        : 26
     Number of input nodes  : 11

     Number of output nodes : 5
     Number of hidden nodes : 10
     Number of hidden layers: 1
     Type of neural nets    : MLP

     ---------------------------------------------------------*/

   length _strfmt_ $21; drop _strfmt_;
   _strfmt_ = ' ';

   array _tlevname_3473_{5} $21 _temporary_ ( 'Rice' 
   'Wheat' 
   'Potato' 
   'Coconut' 
   'Sugarcane');


   length I_Crop $21;
   array _node_val_3473_{26} _temporary_; 

   _badval_ = 0;
   _dropinput_ =                    1;
   _drop_ =                    1;


   /* set input node values */

   _strfmt_ = left(trim(put(Season,$11.)));
   if (_strfmt_ not in ('Winter', 
   'Kharif', 
   'Rabi', 
   'Summer', 
   'Autumn', 
   'Whole Year') ) then do; 


      _badval_ = 1; goto skip_3473; 
   end;
   if (_strfmt_ eq 'Winter') then do;_node_val_3473_{1} = 1.0*_dropinput_;end;else do;_node_val_3473_{1} = 0.0;end;

   if (_strfmt_ eq 'Kharif') then do;_node_val_3473_{2} = 1.0*_dropinput_;end;else do;_node_val_3473_{2} = 0.0;end;
   if (_strfmt_ eq 'Rabi') then do;_node_val_3473_{3} = 1.0*_dropinput_;end;else do;_node_val_3473_{3} = 0.0;end;

   if (_strfmt_ eq 'Summer') then do;_node_val_3473_{4} = 1.0*_dropinput_;end;else do;_node_val_3473_{4} = 0.0;end;
   if (_strfmt_ eq 'Autumn') then do;_node_val_3473_{5} = 1.0*_dropinput_;end;else do;_node_val_3473_{5} = 0.0;end;

   if (_strfmt_ eq 'Whole Year') then do;_node_val_3473_{6} = 1.0*_dropinput_;end;else do;_node_val_3473_{6} = 0.0;end;
   _numval_ = Annual_Rainfall;

   if missing(_numval_) then do;
      _badval_ = 1; goto skip_3473; 
   end;
   _tval_ =     7.65249923128514;
   _sumval_ =    -1.39116395774446;

   _numval_ = 2.0*(_numval_-_sumval_)/_tval_ - 1.0;
   _node_val_3473_{7} = _numval_*_dropinput_;
   _numval_ = Area;
   if missing(_numval_) then do;

      _badval_ = 1; goto skip_3473; 
   end;
   _tval_ =     13.9412066369048;
   _sumval_ =    -0.24552201111697;

   _numval_ = 2.0*(_numval_-_sumval_)/_tval_ - 1.0;
   _node_val_3473_{8} = _numval_*_dropinput_;
   _numval_ = Crop_Year;
   if missing(_numval_) then do;

      _badval_ = 1; goto skip_3473; 
   end;
   _tval_ =                   23;
   _sumval_ =                 1997;

   _numval_ = 2.0*(_numval_-_sumval_)/_tval_ - 1.0;
   _node_val_3473_{9} = _numval_*_dropinput_;
   _numval_ = Fertilizer;
   if missing(_numval_) then do;

      _badval_ = 1; goto skip_3473; 
   end;
   _tval_ =     18.4819658158752;
   _sumval_ =    -0.25386177944161;

   _numval_ = 2.0*(_numval_-_sumval_)/_tval_ - 1.0;
   _node_val_3473_{10} = _numval_*_dropinput_;
   _numval_ = Pesticide;
   if missing(_numval_) then do;

      _badval_ = 1; goto skip_3473; 
   end;
   _tval_ =     17.7230906280871;
   _sumval_ =    -0.22902522010358;

   _numval_ = 2.0*(_numval_-_sumval_)/_tval_ - 1.0;
   _node_val_3473_{11} = _numval_*_dropinput_;


   /* Forward Propagation of Net 0 */

   _sumval_ = 0.0;


   /* Combination for Node 11 */

   _numval_ = 0.0;
   _tval_   = 0.0;
   _bias_   =      0.0869135685179;
   _nval_ = _node_val_3473_{1};

   _tval_ = _nval_ *     0.18472665652781;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{2};

   _tval_ = _nval_ *      0.2862110655125;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *    -0.80223957886494;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *     -0.2205200451555;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *     0.14704532253785;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *     0.46689920275747;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.06802466377145;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *    -0.03728272266602;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.02078818071934;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *    -0.01887356763651;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *    -0.01391301840684;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 11 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{12} = _numval_*_drop_;

   /* Combination for Node 12 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =    -0.25397751680664;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *     0.23068810835387;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *     0.13431759381314;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *     0.12468886194139;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *     0.19609719281481;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *     0.16694872867718;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.86128467454162;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.03483611102609;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *    -0.32964930111887;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.24816847748858;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *    -0.26099212741119;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *    -0.23482692818404;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 12 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{13} = _numval_*_drop_;

   /* Combination for Node 13 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =    -0.26145234504593;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *    -0.17570791259179;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *     -0.2602095435904;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *      0.7690186678367;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *     0.02842834389594;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *    -0.15709342623326;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.14469205370165;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.09656981067192;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *     0.12617644484817;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.11514432330996;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *     0.10473120232546;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *     0.07345246383725;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 13 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{14} = _numval_*_drop_;

   /* Combination for Node 14 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =     0.58269292067775;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *    -0.05745014842668;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *    -0.09968520229616;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *     0.43674198614378;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *     0.27784941440124;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *     0.18618009707737;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.73141610619716;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *     0.16171380686957;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *     0.15330706783544;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *       0.001601949023;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *      0.1087578999564;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *     0.11487772110213;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 14 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{15} = _numval_*_drop_;

   /* Combination for Node 15 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =     0.07297083446159;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *    -0.27330860999922;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *    -0.30331388212985;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *     0.30865642449213;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *    -0.20791289741053;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *     -0.2891600116523;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *     0.74517899639157;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.08205065966276;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *     0.18389707579496;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.07202818221056;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *     0.16057521550335;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *      0.1235715624701;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 15 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{16} = _numval_*_drop_;

   /* Combination for Node 16 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =    -1.65155771997637;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *     0.13761318906662;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *      0.0844343389697;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *     0.15501177279961;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *    -0.02932801041124;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *    -0.25139431380956;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.11182026712726;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.40987297155669;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *    -0.56819709151058;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *     0.00608934778215;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *     -0.4296382331797;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *    -0.41036502269198;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 16 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{17} = _numval_*_drop_;

   /* Combination for Node 17 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =    -2.19851432987039;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *     0.18947849703966;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *     0.00883603949753;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *    -0.17809913503946;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *    -0.33506515090866;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *    -0.50678195177174;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *     0.82315735138396;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.35489823093668;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *    -0.77717187809772;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *     0.20330379939582;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *    -0.62164318157592;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *    -0.56935787780917;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 17 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{18} = _numval_*_drop_;

   /* Combination for Node 18 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =     2.14702711700425;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *    -0.18746656989342;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *      -0.005363184188;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *     0.20314218958346;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *     0.32019595604157;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *      0.4974102435913;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.82585889625514;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *     0.35368031158548;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *     0.74830945077183;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.18519143125268;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *     0.60941939610265;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *     0.55377381326738;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 18 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{19} = _numval_*_drop_;

   /* Combination for Node 19 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =     0.14691763679602;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *     0.24524826092648;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *     0.34669670249017;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *    -0.62802547199441;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *     0.08629557533181;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *      0.4072751700704;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.46819614519832;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *     0.00582470962855;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *     0.03114748831335;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.09181481838426;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *     0.02385693451702;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *     0.04253743207793;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 19 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{20} = _numval_*_drop_;

   /* Combination for Node 20 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =    -0.28892120566952;
   _nval_ = _node_val_3473_{1};
   _tval_ = _nval_ *    -0.20080402366043;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{2};
   _tval_ = _nval_ *    -0.31243536473216;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{3};

   _tval_ = _nval_ *     0.85233284653071;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{4};

   _tval_ = _nval_ *    -0.09096965268314;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{5};

   _tval_ = _nval_ *    -0.13794462529689;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{6};

   _tval_ = _nval_ *    -0.06759597905106;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{7};

   _tval_ = _nval_ *    -0.17547835886501;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{8};

   _tval_ = _nval_ *     0.24380395038042;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{9};

   _tval_ = _nval_ *    -0.26447021420482;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{10};

   _tval_ = _nval_ *     0.19355250678736;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{11};

   _tval_ = _nval_ *     0.14707425657739;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 20 */

   _tval_ = 2.0*_numval_;

   if (_tval_ gt     704.782712893384) then do;
      _numval_ = 1.0;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   else do;
      _tval_ = exp(_tval_);

      _numval_ = 1.0-2.0/(1.0+_tval_);
   end;
   _node_val_3473_{21} = _numval_*_drop_;

   /* Combination for Node 21 */

   _numval_ = 0.0;
   _tval_   = 0.0;

   _bias_   =     0.26319042147532;
   _nval_ = _node_val_3473_{12};
   _tval_ = _nval_ *     0.13681775279013;
   _numval_ + _tval_;

   _nval_ = _node_val_3473_{13};
   _tval_ = _nval_ *     0.56128753105626;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{14};

   _tval_ = _nval_ *    -0.34396515560813;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{15};

   _tval_ = _nval_ *     0.48061745168403;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{16};

   _tval_ = _nval_ *    -0.79476586046787;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{17};

   _tval_ = _nval_ *    -0.39101491715631;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{18};

   _tval_ = _nval_ *     -1.1722311667822;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{19};

   _tval_ = _nval_ *     1.14370429008031;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{20};

   _tval_ = _nval_ *     0.81290769725393;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{21};

   _tval_ = _nval_ *    -0.50505649698645;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 21 */

   _tval_ = _numval_;

   if (_tval_ ge     704.782712893384) then do;
      _tval_ =     704.782712893384;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
   end;
   else do;
      _tval_ = exp(_tval_);
   end;
   _numval_ = _tval_;
   _sumval_ + _numval_;
   _node_val_3473_{22} = _numval_;


   /* Combination for Node 22 */

   _numval_ = 0.0;
   _tval_   = 0.0;
   _bias_   =     0.37139965025075;
   _nval_ = _node_val_3473_{12};

   _tval_ = _nval_ *    -0.85337149682904;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{13};

   _tval_ = _nval_ *    -0.02017973610483;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{14};

   _tval_ = _nval_ *     0.80486345436759;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{15};

   _tval_ = _nval_ *     0.55579404509506;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{16};

   _tval_ = _nval_ *      0.4153562085312;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{17};

   _tval_ = _nval_ *     -0.2190660862492;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{18};

   _tval_ = _nval_ *    -0.65375825016414;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{19};

   _tval_ = _nval_ *     0.66033999718601;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{20};

   _tval_ = _nval_ *    -0.53632269162554;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{21};

   _tval_ = _nval_ *     0.97695564356499;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 22 */

   _tval_ = _numval_;

   if (_tval_ ge     704.782712893384) then do;
      _tval_ =     704.782712893384;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
   end;
   else do;
      _tval_ = exp(_tval_);
   end;
   _numval_ = _tval_;
   _sumval_ + _numval_;
   _node_val_3473_{23} = _numval_;


   /* Combination for Node 23 */

   _numval_ = 0.0;
   _tval_   = 0.0;
   _bias_   =     0.66640321185892;
   _nval_ = _node_val_3473_{12};

   _tval_ = _nval_ *    -0.25066848503067;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{13};

   _tval_ = _nval_ *     0.59080709512927;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{14};

   _tval_ = _nval_ *      0.0685974712086;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{15};

   _tval_ = _nval_ *      0.0446557097294;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{16};

   _tval_ = _nval_ *    -0.27046811728313;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{17};

   _tval_ = _nval_ *      0.8615564930647;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{18};

   _tval_ = _nval_ *     0.84183365222941;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{19};

   _tval_ = _nval_ *    -0.82451209497929;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{20};

   _tval_ = _nval_ *    -0.08829136488547;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{21};

   _tval_ = _nval_ *     -0.0180791979123;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 23 */

   _tval_ = _numval_;

   if (_tval_ ge     704.782712893384) then do;
      _tval_ =     704.782712893384;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
   end;
   else do;
      _tval_ = exp(_tval_);
   end;
   _numval_ = _tval_;
   _sumval_ + _numval_;
   _node_val_3473_{24} = _numval_;


   /* Combination for Node 24 */

   _numval_ = 0.0;
   _tval_   = 0.0;
   _bias_   =    -1.22816880467194;
   _nval_ = _node_val_3473_{12};

   _tval_ = _nval_ *     0.35960358774661;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{13};

   _tval_ = _nval_ *    -0.74198709438361;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{14};

   _tval_ = _nval_ *    -0.19171015547516;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{15};

   _tval_ = _nval_ *    -0.49118099356129;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{16};

   _tval_ = _nval_ *     0.48787236260459;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{17};

   _tval_ = _nval_ *    -0.35790106878728;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{18};

   _tval_ = _nval_ *     0.43149806325264;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{19};

   _tval_ = _nval_ *    -0.41818848997475;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{20};

   _tval_ = _nval_ *     -0.2938521912379;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{21};

   _tval_ = _nval_ *    -0.19522187711534;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 24 */

   _tval_ = _numval_;

   if (_tval_ ge     704.782712893384) then do;
      _tval_ =     704.782712893384;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
   end;
   else do;
      _tval_ = exp(_tval_);
   end;
   _numval_ = _tval_;
   _sumval_ + _numval_;
   _node_val_3473_{25} = _numval_;


   /* Combination for Node 25 */

   _numval_ = 0.0;
   _tval_   = 0.0;
   _bias_   =    -0.07282447891305;
   _nval_ = _node_val_3473_{12};

   _tval_ = _nval_ *     0.61886995347385;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{13};

   _tval_ = _nval_ *    -0.38161553873078;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{14};

   _tval_ = _nval_ *    -0.33036600991626;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{15};

   _tval_ = _nval_ *    -0.59976856526266;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{16};

   _tval_ = _nval_ *     0.18713330305208;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{17};

   _tval_ = _nval_ *      0.0973348633176;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{18};

   _tval_ = _nval_ *     0.56441184439838;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{19};

   _tval_ = _nval_ *    -0.54201669616453;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{20};

   _tval_ = _nval_ *     0.11461850999718;
   _numval_ + _tval_;
   _nval_ = _node_val_3473_{21};

   _tval_ = _nval_ *     -0.2356343995015;
   _numval_ + _tval_;
   _numval_ + _bias_;

   /* Activation for Node 25 */

   _tval_ = _numval_;

   if (_tval_ ge     704.782712893384) then do;
      _tval_ =     704.782712893384;
   end;

   else if (_tval_ lt         -708.3964185) then do;
      _tval_ = 0.0;
   end;
   else do;
      _tval_ = exp(_tval_);
   end;
   _numval_ = _tval_;
   _sumval_ + _numval_;
   _node_val_3473_{26} = _numval_;
   _numval_ = _node_val_3473_{22};

   _numval_ = _numval_ / _sumval_;
   _node_val_3473_{22} = _numval_;
   _numval_ = _node_val_3473_{23};
   _numval_ = _numval_ / _sumval_;
   _node_val_3473_{23} = _numval_;
   _numval_ = _node_val_3473_{24};

   _numval_ = _numval_ / _sumval_;
   _node_val_3473_{24} = _numval_;
   _numval_ = _node_val_3473_{25};
   _numval_ = _numval_ / _sumval_;
   _node_val_3473_{25} = _numval_;
   _numval_ = _node_val_3473_{26};

   _numval_ = _numval_ / _sumval_;
   _node_val_3473_{26} = _numval_;
   skip_3473:
   if (_badval_ eq 1) then do;
      P_CropRice = .;
      P_CropWheat = .;
      P_CropPotato = .;

      P_CropCoconut = .;
      P_CropSugarcane = .;
      I_Crop = ' ';
      _NN_PredP = .  ;
   end;
   else do;
      _nn_pred_lev_ = -1;
      _NN_PredP = 0.0;

      _numval_ = _node_val_3473_{22};
      P_CropRice = _node_val_3473_{22};
      if (_numval_ gt _NN_PredP) then do;
         _NN_PredP = _numval_;

         _nn_pred_lev_ = 1;
      end;
      _numval_ = _node_val_3473_{23};
      P_CropWheat = _node_val_3473_{23};

      if (_numval_ gt _NN_PredP) then do;
         _NN_PredP = _numval_;
         _nn_pred_lev_ = 2;
      end;

      _numval_ = _node_val_3473_{24};
      P_CropPotato = _node_val_3473_{24};
      if (_numval_ gt _NN_PredP) then do;
         _NN_PredP = _numval_;

         _nn_pred_lev_ = 3;
      end;
      _numval_ = _node_val_3473_{25};
      P_CropCoconut = _node_val_3473_{25};

      if (_numval_ gt _NN_PredP) then do;
         _NN_PredP = _numval_;
         _nn_pred_lev_ = 4;
      end;

      _numval_ = _node_val_3473_{26};
      P_CropSugarcane = _node_val_3473_{26};
      if (_numval_ gt _NN_PredP) then do;
         _NN_PredP = _numval_;

         _nn_pred_lev_ = 5;
      end;
      I_Crop = _tlevname_3473_{_nn_pred_lev_};
   end;
   label I_Crop = 'Into: Crop';

   label P_CropRice = 'Predicted: Crop=Rice                 ';

   label P_CropWheat = 'Predicted: Crop=Wheat                ';

   label P_CropPotato = 'Predicted: Crop=Potato               ';

   label P_CropCoconut = 'Predicted: Crop=Coconut              ';

   label P_CropSugarcane = 'Predicted: Crop=Sugarcane            ';

   drop _numval_;
   drop _sumval_;
   drop _bias_;
   drop _tval_;
   drop _nval_;
   drop _badval_;
   drop _drop_;

   drop _dropinput_;
   drop _nn_pred_lev_;
   drop _NN_PredP;
   /*------------------------------------------*/
   /*_VA_DROP*/ drop 'I_Crop'n 'P_CropCoconut'n 'P_CropPotato'n 'P_CropRice'n 'P_CropSugarcane'n 'P_CropWheat'n;
length 'I_Crop_3473'n $21;
      'I_Crop_3473'n='I_Crop'n;
'P_CropCoconut_3473'n='P_CropCoconut'n;
'P_CropPotato_3473'n='P_CropPotato'n;
'P_CropRice_3473'n='P_CropRice'n;
'P_CropSugarcane_3473'n='P_CropSugarcane'n;
'P_CropWheat_3473'n='P_CropWheat'n;
   /*------------------------------------------*/