@layout('layouts.common')

@section('content')

<form action="post_register" method="post">
    <label for="name">Name</label>
    <input type="text" id="name" name="name">

    <label for="email">Email</label>
    <input type="text" id="email" name="email">

    <label for="mobile">Mobile</label>
    <input type="text" id="mobile" name="mobile">

    <label for="company">Company Name</label>
    <input type="text" id="company" name="company">

    <input type="hidden" name="url" value="<% $url; %>">

    <br/>

    <input class="btn" type="submit" value="Submit & Download">
</form>

@endsection