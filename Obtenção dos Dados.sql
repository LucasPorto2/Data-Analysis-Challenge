SELECT forms.id , forms.hair_type , forms.age, orders.created, orders.value
FROM public.forms INNER JOIN public.orders ON forms.id = orders.form_id ;