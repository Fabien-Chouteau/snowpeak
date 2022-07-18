with Options;
with Snowpeak.Message;
with RFLX.RFLX_Types;

package Snowpeak.Querier is
   package TLV_Options is new Options (Snowpeak.Message.TLV);

   type Querier is interface;

   function Get_TLV
     (Self : Querier; OID : RFLX.RFLX_Types.Bytes)
      return TLV_Options.Option is abstract;

   function Respond
     (Self : Querier'Class; Request : Snowpeak.Message.Message)
      return Snowpeak.Message.Message;
end Snowpeak.Querier;
