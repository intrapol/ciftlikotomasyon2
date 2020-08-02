<?php $db = new mysqli ("localhost","serdar","123456","siparis") or die ("Bağlanamadı");

$db->set_charset ("utf8");
include("mutfakislem.php");
$mutfak = new mutfak;

?>  

<!DOCTYPE html>
<html lang="tr">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../dosya/jqu.js"></script>
<link rel="stylesheet" href="../dosya/boost.css">
<link rel="stylesheet" href="../dosya/stil.css">
    <title>Mutfak</title>
</head>
<body>

<div class="container-filued">
    <div class="row">
    <div class="card border-success  mb-3" style="max-width: 23rem;">
            <div class="card-header bg-info border-success text-lg-center "><h3 class="alert-info">TOPLAM ÜRÜNLER</h3></div>
            <div class="card-body ">
              <table border="1">
              <thead>
              <tr class="table-info">
                <th >ÜRÜN AD</th>
                <th >TOPLAM ADET</th>             
              </tr> 
                <?php 
                $mutfak->toplamurun($db);
                
                ?>
                <tr>
         
    </table>
  </div>
</div>


<?php 
$mutfak->mutfaksparis($db);
?>
    </div>
</div>

</body>
</html>