import { Card } from "react-bootstrap"

function SupplierView({ supplier}) {
    return (
        <Card className='w-[360px]'>
            <Card.Header>
                <Card.Title>{supplier.supplier_type} {supplier.supplier_name}</Card.Title>
            </Card.Header>
            <Card.Body>
                <div className='flex justify-between'>
                    <Card.Text>Начало работы:</Card.Text>
                    <Card.Text>{new Date(supplier.work_start_date).toLocaleDateString()}</Card.Text>
                </div>
                <div className='flex justify-between'>
                    <Card.Text>Закупочная цена:</Card.Text>
                    <Card.Text>{supplier.cost_price} ₽</Card.Text>
                </div>
                <div className='flex justify-between'>
                    <Card.Text>Рейтинг:</Card.Text>
                    <Card.Text>{supplier.rating}/10</Card.Text>
                </div>
            </Card.Body>
            <Card.Footer>
                <div className='flex justify-between'>
                    <Card.Text>ИНН:</Card.Text>
                    <Card.Text>{supplier.inn}</Card.Text>
                </div>
            </Card.Footer>
        </Card>
    )
}

export default SupplierView
