let
githubFn = (user as text, repository as text, function as text) =>
    let
        sourceFn = Expression.Evaluate(
            Text.FromBinary(
                Binary.Buffer(
                    Web.Contents("https://raw.githubusercontent.com/"&user&"/"&repository&"/master/"&function)
                )
            ), #shared)
    in
        sourceFn
in
    githubFn
