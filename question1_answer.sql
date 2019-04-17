SELECT
    name
FROM
    member
WHERE
    id = (
    SELECT
        member_id
    FROM
        checkout_item
    WHERE
        book_id = (
        SELECT
            id
        FROM
            book
        WHERE
            title = 'The Hobbit'
        )
    );
