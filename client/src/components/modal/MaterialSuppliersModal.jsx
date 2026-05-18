import { Modal } from 'react-bootstrap'
import SupplierView from '../ui/supplierView'

function MaterialSuppliersModal({ onClose, material }) {
    return (
        <Modal show onHide={onClose} size="xl">
            <Modal.Header>
                <Modal.Title>Поставщики товара {material.material_name}</Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <div className='flex flex-wrap justify-center gap-2'>
                    {material?.suppliers.map(supplier => (
                        <SupplierView key={supplier.id} supplier={supplier} />
                    ))}
                </div>
            </Modal.Body>
        </Modal>
    )
}

export default MaterialSuppliersModal
