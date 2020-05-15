    </div>
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
    <script src="js/dropzone.js"></script>
    <script src="js/scripts.js"></script>
    
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Activity', '%'],
          ['New Views',   <?php echo $session->count; ?>],
          ['Comments',    <?php echo Comment::count_all(); ?>],
          ['Users',       <?php echo User::count_all(); ?>],
          ['Photos',      <?php echo Photo::count_all(); ?>]
        ]);
        var options = {
          legend: 'none',
          pieSliceText: 'label',
          title: 'Photo Gallery - Statistics',
          backgroundColor: 'transparent'
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
    </script>
</body>
</html>
