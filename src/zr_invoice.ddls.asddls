@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Invoice'
define root view zr_invoice as select from zinvoice {
    key invoice_number,
    posting_date,
    vendor,
    amount,
    currency,
    status,
    @Semantics.user.createdBy: true
    local_created_by      as localcreatedby,
    @Semantics.systemDateTime.createdAt: true
    local_created_at      as localcreatedat,
    @Semantics.user.localInstanceLastChangedBy: true
    local_last_changed_by as locallastchangedby,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as locallastchangedat,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at       as lastchangedat,
    _item
} 