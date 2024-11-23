<?php
include "conexao.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Lista de Agendamentos</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="sidebar" id="sidebar">
    
    <h3>Barbearia do GG</h3>
    <ul class="nav flex-column">
        <li><a href="index.html" class="nav-link active">Home</a></li>
        <li><a href="agendar.php" class="nav-link">Agendamento</a></li>
        <li><a href="agenda.php" class="nav-link">Agenda</a></li>
        <li><a href="cadastrar_usuario.html" class="nav-link">Cadastrar</a></li>
        <li><a href="lista_de_agendamento.php" class="nav-link">Lista de Agendamento</a></li>
    </ul>
</div>

<button id="toggleSidebar">☰</button>

<div class="content" id="content">
    <div class="login-container">
  

  <div class="login-form">
    <h2>Lista de Agendamentos</h2>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Nome do Cliente</th>
          <th>Nome do Barbeiro</th>
          <th>Data e hora</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $sql = 'SELECT c.nome as cliente, b.nome as barbeiro, data, horario FROM agendamentos inner join usuarios as c on c.id_usuario = agendamentos.id_usuario
          inner join agendas on agendas.id_agenda = agendamentos.id_agenda
          inner join usuarios as b on b.id_usuario = agendas.id_usuario
          
          ';
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {
              while ($row = $result->fetch_assoc()) {
                  echo "
                    <tr>
                      <td>".$row['cliente']."</td>
                      <td>".$row['barbeiro']."</td>
                      <td>".$row['data']." - " .$row['horario']."</td>
                      <td><button class='btn btn-danger'>Excluir</button></td>
                    </tr>
                  ";
              }
          }
        ?>
        
      
      </tbody>
    </table>
  </div>
  </div>
  <script>
        const toggleButton = document.getElementById('toggleSidebar');
        const sidebar = document.querySelector('.sidebar');

        toggleButton.addEventListener('click', () => {
            sidebar.classList.toggle('collapsed');
        });
    </script>
</body>

</html>