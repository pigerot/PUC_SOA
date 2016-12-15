(:: pragma bea:global-element-parameter parameter="$parametrosScoreCliente1" element="ns1:parametrosScoreCliente" location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd" ::)
(:: pragma bea:global-element-return element="ns2:parametrosVerificaCreditoExterno" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://pucminas.br/SN/CreditoGeral";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/CreditoGeral/ParametrosScoreClienteToVerficiaCreditoExterno/";

declare function xf:ParametrosScoreClienteToVerficiaCreditoExterno($parametrosScoreCliente1 as element(ns1:parametrosScoreCliente))
    as element(ns2:parametrosVerificaCreditoExterno) {
        <ns2:parametrosVerificaCreditoExterno>
            {
                let $pessoa := $parametrosScoreCliente1/ns1:pessoa
                return
                    <ns2:pessoa/>
            }
        </ns2:parametrosVerificaCreditoExterno>
};

declare variable $parametrosScoreCliente1 as element(ns1:parametrosScoreCliente) external;

xf:ParametrosScoreClienteToVerficiaCreditoExterno($parametrosScoreCliente1)
