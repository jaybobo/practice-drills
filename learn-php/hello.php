<html>
  <head>
    <title>PHP Test</title>
  </head>
  <body>
    <?php

      $foo = True;
      $a_number = 4;
      echo gettype($foo);
      echo '<br />'; 
      echo gettype($a_number),'<br />';
      
      if (is_int($a_number)) {
        $a_number += 5;
      }

      echo gettype($a_number);
      echo '<br />'; 
      var_dump($a_number);

      $a_array = [ 
        "foo",
        "bar"
       ];
      $b_array = ["alpha","bravo"];
     
      echo '<br />'; 
      var_dump($a_array);
      echo '<br />'; 
      $b_array[3] = "charlie";
      foreach ($b_array as $i => $value) {
        unset($b_array[$i]);
      }
      $b_array[] = 11;
      print_r($b_array);
      echo '<br />'; 
      $b_array = array_values($b_array);
      $b_array[] = "turtle";
      var_dump($b_array);

      foreach ($a_array as &$item) {
        echo $item = strtoupper($item);
      }
      unset($item);
      
      echo '<br /><br />'; 
      print_r($a_array);
      $b_array = &$a_array;
      print_r($b_array);
    ?>
  </body>
</html>
