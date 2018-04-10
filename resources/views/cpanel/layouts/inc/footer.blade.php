       <!-- Mainly scripts -->
      <script src="{{ asset('cpanel/js/jquery-2.1.1.js') }}"></script>
      <script src="{{ asset('cpanel/js/bootstrap.min.js') }}"></script>
      <!-- Custom and plugin javascript -->
      <script src="{{ asset('cpanel/js/inspinia.js') }}"></script>
      <!-- <script src="{{ asset('cpanel/js/plugins/pace/pace.min.js') }}"></script> -->
      <script src="{{ asset('cpanel/js/plugins/slimscroll/jquery.slimscroll.min.js') }}"></script>
      <!-- Chosen -->
      <script src="{{ asset('cpanel/js/plugins/chosen/chosen.jquery.js') }}"></script>
      <!-- JSKnob -->
      <script src="{{ asset('cpanel/js/plugins/jsKnob/jquery.knob.js') }}"></script>
           <!-- Data picker -->
      <script src="{{ asset('cpanel/js/plugins/datapicker/bootstrap-datepicker.js') }}"></script>
      <!-- NouSlider -->
      <script src="{{ asset('cpanel/js/plugins/nouslider/jquery.nouislider.min.js') }}"></script>
      <!-- Switchery -->
      <script src="{{ asset('cpanel/js/plugins/switchery/switchery.js') }}"></script>
      <!-- IonRangeSlider -->
      <script src="{{ asset('cpanel/js/plugins/ionRangeSlider/ion.rangeSlider.min.js') }}"></script>
      <script src="{{ asset('cpanel/js/plugins/dataTables/datatables.min.js') }}"></script>
      <script src="{{ asset('cpanel/js/plugins/dataTables/table.js') }}"></script>
      <!-- iCheck -->
      <script src="{{ asset('cpanel/js/plugins/iCheck/icheck.min.js') }}"></script>
      <!-- MENU -->
      <script src="{{ asset('cpanel/js/plugins/metisMenu/jquery.metisMenu.js') }}"></script>
      <!-- Color picker -->
      <script src="{{ asset('cpanel/js/plugins/colorpicker/bootstrap-colorpicker.min.js') }}"></script>
      <!-- Clock picker -->
      <script src="{{ asset('cpanel/js/plugins/clockpicker/clockpicker.js') }}"></script>
      <!-- Image cropper -->
      <script src="{{ asset('cpanel/js/plugins/cropper/cropper.min.js') }}"></script>
      <!-- Date range use moment.js same as full calendar plugin -->
      <script src="{{ asset('cpanel/js/plugins/fullcalendar/moment.min.js') }}"></script>
      <!-- Date range picker -->
      <script src="{{ asset('cpanel/js/plugins/daterangepicker/daterangepicker.js') }}"></script>
      <!-- Select2 -->
      <script src="{{ asset('cpanel/js/plugins/select2/select2.full.min.js') }}"></script>
      <!-- TouchSpin -->
      <script src="{{ asset('cpanel/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js') }}"></script>
      <!-- Tags Input -->
      <script src="{{ asset('cpanel/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js') }}"></script>
      <!-- Dual Listbox -->
      <script src="{{ asset('cpanel/js/plugins/dualListbox/jquery.bootstrap-duallistbox.js') }}"></script>
      <script src="{{ asset('cpanel/js/fakeLoader.min.js') }}"></script>
      <!-- Jasny for upload image  && Input Mask -->
      <script src="{{ asset('cpanel/js/plugins/jasny/jasny-bootstrap.min.js') }}"></script>
      <!-- SUMMERNOTE -->
      <script src="{{ asset('cpanel/js/plugins/summernote/summernote.min.js') }}"></script>
      <!-- Sweet alert -->
      <script src="{{ asset('cpanel/js/plugins/sweetalert/sweetalert.min.js') }}"></script>
      
     
<script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace( 'article-ckeditor' );
        CKEDITOR.replace( 'articleed-ckeditor' );
    </script>

@yield('js')
</body>
</html>
