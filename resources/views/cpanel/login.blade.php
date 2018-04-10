@include('cpanel.layouts.inc.head')

<body class="gray-bg">
    <div class="fakeloader"></div>

    <div id="login" style="background-image: url({{ asset('cpanel/img/3.jpg') }}); background-size: cover; background-repeat: no-repeat; height: 100%; ">
        <div class="container">
            @include('cpanel.layouts.inc.messages')
            <div class="row" style="margin-top: 15%">

                <div class="col-md-2 col-md-offset-3">
                    <img src="{{ asset('cpanel/img/sign in.png') }}">
                </div>
                <div class="col-md-4">
                    <form class="m-t log" method="POST" role="form" action="{{ url('admin/login') }}">
                        <h1>Penta Levels</h1>
                        {{ csrf_field() }}
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <input type="email" class="form-control" name="email" placeholder="Email Address" value="{{ old('email') }}" required autofocus> @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif

                        </div>
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <input type="password" class="form-control" placeholder="Password" name="password" required> @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="form-group">
                            <div class="checkbox i-checks">
                                <label>
                                    <input name="remember" {{ old( 'remember') ? 'checked' : '' }} type="checkbox">
                                </label>
                                <span class="color-white">Remember Me</span>
                                <span class="pull-right">
                                    <a class="color-white" data-toggle="modal" data-target="#add">Forget Password</a>
                                </span>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success block full-width m-b">Sign In</button>


                    </form>
                </div>

            </div>
            <!-- Modal -->
            <div id="add" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 class="title">You can reset your password here.</h3>
                        </div>
                        <div class="modal-body m-t-sm">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <form role="form">

                                        <!--  -->
                                        <div class="form-group">
                                            <input type="email" placeholder=" E-mail" class="form-control">
                                        </div>
                                        <!--  -->

                                    </form>
                                </div>


                                <div class="col-md-12">
                                    <button class="btn btn-sm btn-warning btn-block m-t-n-xs" type="submit">
                                        <strong>Reset Password</strong>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-md-offset-8" style=" position:fixed;bottom:4px;">
                    <div class="row">
                        <div class="col-md-2">
                            <img src="{{ asset('cpanel/img/footer.png') }}">
                        </div>
                        <div class="col-md-10">
                            <p class="main-color">Copyrights © Penta Levels 2017</p>
                            <p class="color-white" style="font-size: 10px">
                                <a href="http://paladox.com/" target="_blank">Designed & Developed by Paladox</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

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
    <!-- Input Mask-->
    <script src="{{ asset('cpanel/js/plugins/jasny/jasny-bootstrap.min.js') }}"></script>
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
    <!-- Jasny for upload image-->
    <script src="{{ asset('cpanel/js/plugins/jasny/jasny-bootstrap.min.js') }}"></script>
    <!-- SUMMERNOTE -->
    <script src="{{ asset('cpanel/js/plugins/summernote/summernote.min.js') }}"></script>
    <!-- Sweet alert -->
    <script src="{{ asset('cpanel/js/plugins/sweetalert/sweetalert.min.js') }}"></script>
    <!-- iCheck -->
    <script src="{{ asset('cpanel/js/plugins/iCheck/icheck.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>

</body>

</html>