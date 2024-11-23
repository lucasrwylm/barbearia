<?php
include "conexao.php";

$dias_da_semana = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado'];

$data_agendamento = $_POST['data']; 
$servico = $_POST['servico'];
$id_usuario = $_POST['id_usuario'];


$dayofweek = date('w', strtotime($data_agendamento));

$sql = "
SELECT 
usuarios.nome, agendas.dia_da_semana, agendas.horario, agendas.id_agenda, usuarios.id_usuario 
FROM agendas
INNER JOIN usuarios ON usuarios.id_usuario = agendas.id_usuario
WHERE agendas.dia_da_semana = $dayofweek
AND agendas.id_agenda NOT IN (
    SELECT agendas.id_agenda 
    FROM agendamentos 
    INNER JOIN agendas ON agendamentos.id_agenda = agendas.id_agenda
    WHERE agendamentos.data = '$data_agendamento'
)
ORDER BY agendas.horario

";


$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Agendamentos Disponíveis</title>
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
        <li><a href="index.php" class="nav-link active">Home</a></li>
        <li><a href="agendar.php" class="nav-link">Agendamento</a></li>
        <li><a href="agenda.php" class="nav-link">Agenda</a></li>
        <li><a href="cadastrar_usuario.html" class="nav-link">Cadastrar</a></li>
        <li><a href="lista_de_agendamento.php" class="nav-link">Lista de Agendamento</a></li>
    </ul>
</div>

<button id="toggleSidebar">☰</button>

   

<div class="container mt-3">
    <h2>Lista de Agendamentos Disponíveis para o dia: <?php echo $data_agendamento; ?></h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Barbeiro</th>
                <th>Dia da Semana</th>
                <th>Horário</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    // Cada linha terá um formulário próprio para enviar os dados
                    echo "
                    <tr>
                            <td>".$row['nome']."</td>
                            <td>".$dias_da_semana[$row['dia_da_semana']]."</td>
                            <td>".$row['horario']."</td>
                            <td>
                                <input type='hidden' name='id_usuario' value='".$row['id_usuario']."'>
                                <input type='hidden' name='id_agenda' value='".$row['id_agenda']."'>
                                <input type='hidden' name='data' value='$data_agendamento'>
                                <a  href='insert_agendamento.php?id_agenda=".$row['id_agenda']."&data=".$data_agendamento."&id_usuario=".$id_usuario."&id_servico=".$servico."'  ><button type='submit' class='btn btn-primary'>Agendar</button></a>
                            </td>
                    </tr>
                    ";
                }
            } else {
                echo "<tr><td colspan='4'>Não há agendamentos disponíveis para essa data.</td></tr>";
            }
            ?>
        </tbody>
    </table>
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
