// Gráfico de Serviços
function criarGraficoServicos() {
    const ctx = document.getElementById('servicosChart').getContext('2d');
    new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['Polimento', 'Lavagem', 'Vitrificação', 'Higienização'],
        datasets: [{
          label: 'Quantidade de Serviços',
          data: [45, 78, 32, 55],
          backgroundColor: '#36b9cc'
        }]
      }
    });
  }
  
  // Simular dados do Dashboard
  function atualizarMetricas() {
    document.getElementById('agendamentosHoje').textContent = Math.floor(Math.random() * 20);
    document.getElementById('vendasMensais').textContent = `R$ ${(Math.random() * 10000).toFixed(2)}`;
  }
  
  // Tema Escuro/Claro
  function toggleTema() {
    document.body.classList.toggle('dark-theme');
    localStorage.setItem('tema', document.body.classList.contains('dark-theme') ? 'dark' : 'light');
  }
  
  // Inicialização
  document.addEventListener('DOMContentLoaded', () => {
    criarGraficoServicos();
    setInterval(atualizarMetricas, 5000); // Atualiza a cada 5 segundos
    
    // Verificar tema salvo
    if (localStorage.getItem('tema') === 'dark') {
      document.body.classList.add('dark-theme');
    }
  });