@layout('layouts.common')
@section('content')

Thanks for downloading

<form name="d" style="display: none" action="/file/get/<% $id %>"></form>

<script type="text/javascript">
    document.d.submit();
</script>

@endsection