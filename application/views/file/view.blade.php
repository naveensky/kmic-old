@layout('layouts.common')
@section('content')


<div class="row-fluid">
    <div class="span10">
        <h4><% $file->title %></h4>
    </div>
    <div class="span2">
        <a class="btn btn-info" href="/file/download/<% $file->id %>/<% $file->title %>">Download</a>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <table class="table">
            <tr>
                <th>Date Posted</th>
                <td><% $file->date_published %></td>
            </tr>
            <tr>
                <th>Downloaded</th>
                <td><% $file->download_count %></td>
            </tr>
            <tr>
                <th>Categories</th>
                <td><% $file->tags %></td>
            </tr>
            <tr>
                <th colspan="2">Description</th>
            </tr>
            <tr>
                <td colspan="2">
                    <% $file->description %>
                </td>
            </tr>
        </table>
    </div>
</div>

@endsection