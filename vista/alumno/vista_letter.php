
<?php
session_start();
?>
<script type="text/javascript" src="../js/letter.js?rev=<?php echo time();?>"></script>
<div class="col-md-4">
          <div class="box box-warning">
           
            <div class="box-header with-border">
              <h3 class="box-title"><b>CURSOS Y CALIFICACIONES</b></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <input type="text" id="AlumIDgrado" value="<?php echo $_SESSION['S_GRADO'] ?> " hidden>
              <!--<h5><b>GRADO ACTUAL <label id="nombreGrado"></label></b></h5>-->
             
              <table id="table_cursos" class="display responsive nowrap" style="width:100%">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nombre</th>
                         <th>Estado</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        
                    </tr>
                </tfoot>
            </table>




            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>

        <style type="text/css">
          table label.form-control {
  border: none;
  background: transparent;
  font-weight: bold;
  text-align: center;
}
.text-danger {
  color: red !important;
  font-weight: bold;
}

.text-primary {
  color: #2214d9 !important; /* Azul Bootstrap */
  font-weight: bold;
}


        </style>

<div class="col-md-8" id="divtablanotas" hidden>
          <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title"><b>NOTAS DE CURSO <label id="Cursonom"></label></b></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">

          <div class=" table-responsive" ><br>
           <table class="table table-bordered table-striped" id="tablaNotasAlumno">
            <thead class="bg-info text-white text-center">
              <tr>
                <th>Práctica 1</th>
                <th>Práctica 2</th>
                <th>Práctica 3</th>
                <th>Práctica 4</th>
                <th>Trabajo 1</th>
                <th>Trabajo 2</th>
                <th>Trabajo 3</th>
                <th>Trabajo 4</th>
                <th>Parcial 1</th>
                <th>Parcial 2</th>
                <th>Parcial 3</th>
                <th>Parcial 4</th>
                <th>Examen 1</th>
                <th>Examen 2</th>
                <th>Promedio</th>
              </tr>
            </thead>
            <tbody id="tabla_notas"></tbody>
          </table>


       
                        
           </div>

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
       

 <script>
$(document).ready(function() {
    //idGrado();
    var idGrado=$("#AlumIDgrado").val();
  listar_cursosAlumno(idGrado);
 
  


} );
</script>