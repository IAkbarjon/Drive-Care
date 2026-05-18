import { useEffect, useState } from 'react'
import MaterialView from '../components/ui/MaterialView'
import useData from '../hooks/useData'
import MaterialInputModal from '../components/modal/MaterialInputModal'
import LoadingPage from './LoadingPage'
import MaterialProducts from '../components/modal/MaterialProducts'
import MaterialSuppliersModal from '../components/modal/MaterialSuppliersModal'

function MaterialsPage() {
    const [mode, setMode] = useState(null)
    const [selectedMaterial, setSelectedMaterial] = useState(null)
    
    const { isLoading, materials } = useData()

    useEffect(() => {
        if (!selectedMaterial) {
            setMode(null)
        }
    }, [selectedMaterial])

    const closeModals = () => {
        setMode(null)
        setSelectedMaterial(null)
    }
    
    if (isLoading) {
        return <LoadingPage />
    }

    return (
        <div className='flex flex-col'>
            <hr />
            <div className='flex items-center justify-between w-[86%] self-center'>
                <h3>Все материалы</h3>
                <button
                    onClick={() => {
                        setMode('input')
                    }}
                    className='bg-main-accent text-white p-2 rounded shadow-md'
                >Добавить материал</button>
            </div>
            <hr />
            <div className='flex flex-wrap justify-center gap-3'>
                {materials.map(material => (
                    <MaterialView
                        key={material.id}
                        material={material}
                        onEdit={() => {
                            setSelectedMaterial(material)
                            setMode('input')
                        }}
                        showMaterials={() => {
                            setSelectedMaterial(material)
                            setMode('products')
                        }}
                        showSuppliers={() => {
                            setSelectedMaterial(material)
                            setMode('suppliers')
                        }}
                    />
                ))}
            </div>

            {mode === 'input' && (
                <MaterialInputModal
                    onClose={() => closeModals()}
                    editedMaterial={selectedMaterial}
                />
            )}

            {mode === 'products' && (
                <MaterialProducts
                    onClose={() => closeModals()}
                    material={selectedMaterial}
                />
            )}

            {mode === 'suppliers' && (
                <MaterialSuppliersModal
                    onClose={() => closeModals()}
                    material={selectedMaterial}
                />
            )}
        </div>
    )
}

export default MaterialsPage
