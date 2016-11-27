(:: pragma bea:global-element-parameter parameter="$parametrosScoreCliente1" element="ns1:parametrosScoreCliente" location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd" ::)
(:: pragma bea:global-element-return element="ns1:parametrosVerificaCreditoExterno" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Pedro";
declare namespace xf = "http://tempuri.org/OSB_Pedro/ServicosNegocio/Credito/Resources/Transformations/CreditoGeral/PessoaToVerficiaCreditoExterno/";

declare function xf:PessoaToVerficiaCreditoExterno($parametrosScoreCliente1 as element(ns1:parametrosScoreCliente))
    as element(ns1:parametrosVerificaCreditoExterno) {
        <ns1:parametrosVerificaCreditoExterno>
            <ns1:pessoa>{ $parametrosScoreCliente1/ns1:pessoa/@* , $parametrosScoreCliente1/ns1:pessoa/node() }</ns1:pessoa>
        </ns1:parametrosVerificaCreditoExterno>
};

declare variable $parametrosScoreCliente1 as element(ns1:parametrosScoreCliente) external;

xf:PessoaToVerficiaCreditoExterno($parametrosScoreCliente1)
