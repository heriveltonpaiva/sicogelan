<%@ page import="br.sicogelan.caixa.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="pedido.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${pedidoInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'valorTotal', 'error')} required">
	<label for="valorTotal">
		<g:message code="pedido.valorTotal.label" default="Valor Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorTotal" value="${fieldValue(bean: pedidoInstance, field: 'valorTotal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'statusConsumo', 'error')} required">
	<label for="statusConsumo">
		<g:message code="pedido.statusConsumo.label" default="Status Consumo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="statusConsumo" required="" value="${pedidoInstance?.statusConsumo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'itemPedido', 'error')} required">
	<label for="itemPedido">
		<g:message code="pedido.itemPedido.label" default="Item Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="itemPedido" name="itemPedido.id" from="${br.sicogelan.caixa.ItemPedido.list()}" optionKey="id" required="" value="${pedidoInstance?.itemPedido?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'mesa', 'error')} required">
	<label for="mesa">
		<g:message code="pedido.mesa.label" default="Mesa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mesa" name="mesa.id" from="${br.sicogelan.caixa.Mesa.list()}" optionKey="id" required="" value="${pedidoInstance?.mesa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'registroGeral', 'error')} required">
	<label for="registroGeral">
		<g:message code="pedido.registroGeral.label" default="Registro Geral" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registroGeral" name="registroGeral.id" from="${br.sicogelan.comum.RegistroGeral.list()}" optionKey="id" required="" value="${pedidoInstance?.registroGeral?.id}" class="many-to-one"/>

</div>

