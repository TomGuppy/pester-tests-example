Describe 'Validate Luke Skywalker' {

    $Response = Get-ApiResource 'people/1/'
    $JsonRespone = $Response | ConvertFrom-Json

    It 'Is 200' {
        $Response.StatusCode | Should -Be 200
    }

    # image/png
    It 'Is application/json' {
        $Response.Headers["Content-Type"] | Should -Be 'application/json'
    }

    It 'Is Luke' {
        $JsonRespone.name | Should -Be 'Luke Skywalker'
    }

    It 'Is blue' {
        $JsonRespone.eye_color | Should -Be 'blue'
    }
}
