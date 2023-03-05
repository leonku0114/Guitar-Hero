module text(input [9:0] drawx, drawy,
		output on, onp1, one, onl0, onl1, onl2, onl3, onl4, onl5, onl6, onl7, onl8, onl9, onl10, onl11, onl12, onl13, on2,onl0_, onl1_, onl2_, onl3_, onl4_, onl5_, onl6_, onl7_, onl8_, onl9_, onl10_, onl11_, onl12_, onl13_);
//	logic [9:0] temp, temp1;
//	logic[10:0]	addr;
//	logic [7:0]	data;
//	
//	
//	 font_rom f0(
//				.addr(addr),
//				.data(data)
//				);
//
//assign addr = drawx*16;
//assign on=data[drawy];
////	always_ff
////	begin
//////	for (temp=0; temp <16; temp++) 
//////	begin
//////	for (temp1=0; temp1 <8; temp1++) 
//////	begin
////	if(drawx==350 && drawy==36)
////		on=1;
////	else 
////	on=0;
////	end
//////	end
//////	end
//S 
	always_ff
	begin
	
//	if (drawx==485 && (drawy==36 || drawy==37|| drawy==38|| drawy==39|| drawy==44|| drawy==45))
//	on=1'b1;
//	else if (drawx==486 && (drawy==37 || drawy==38|| drawy==43|| drawy==44))
//	on=1'b1;
//	else if (drawx==487 && (drawy==36 || drawy==39|| drawy==40|| drawy==45))
//	on=1'b1;
//	else if (drawx==488 && (drawy==36 || drawy==40|| drawy==41|| drawy==42|| drawy==45))
//	on=1'b1;
//	else if (drawx==489 && (drawy==36 || drawy==40|| drawy==41|| drawy==42|| drawy==45))
//	on=1'b1;
//	else if (drawx==490 && (drawy==36 || drawy==37|| drawy==38|| drawy==41|| drawy==42|| drawy==43|| drawy==44 || drawy==45))
//	on=1'b1;
//	else if (drawx==491 && (drawy==37 || drawy==38|| drawy==42|| drawy==43|| drawy==44))
//	on=1'b1;
	
	//S
	if (drawy==36 && (drawx==569 || drawx==570 ||drawx==571||drawx==572||drawx==573))
	on=1'b1;
	else if (drawy==37 && (drawx==568 || drawx==569|| drawx==573|| drawx==574))
	on=1'b1;
	else if (drawy==38 && (drawx==568|| drawx==569|| drawx==573|| drawx==574))
	on=1'b1;
	else if (drawy==39 && (drawx==569 || drawx==570))
	on=1'b1;
	else if (drawy==40 && (drawx==570 || drawx==571||drawx==572))
	on=1'b1;
	else if (drawy==41 && (drawx==572 || drawx==573))
	on=1'b1;
	else if (drawy==42 && (drawx==573 || drawx==574))
	on=1'b1;
	else if (drawy==43 && (drawx==568|| drawx==569|| drawx==573|| drawx==574))
	on=1'b1;
	else if (drawy==44 && (drawx==568|| drawx==569|| drawx==573|| drawx==574))
	on=1'b1;
	else if (drawy==45 && (drawx==569|| drawx==570|| drawx==571|| drawx==572|| drawx==573))
	on=1'b1;
	
	//C
	else if (drawy==36 && (drawx==581 || drawx==582 ||drawx==583||drawx==584))
	on=1'b1;
	else if (drawy==37 && (drawx==580 || drawx==581|| drawx==584|| drawx==585))
	on=1'b1;
	else if (drawy==38 && (drawx==579 || drawx==580|| drawx==585))
	on=1'b1;
	else if (drawy==39 && (drawx==579 || drawx==580))
	on=1'b1;
	else if (drawy==40 && (drawx==579 || drawx==580))
	on=1'b1;
	else if (drawy==41 && (drawx==579 || drawx==580))
	on=1'b1;
	else if (drawy==42 && (drawx==579 || drawx==580))
	on=1'b1;
	else if (drawy==43 && (drawx==579|| drawx==580|| drawx==585))
	on=1'b1;
	else if (drawy==44 && (drawx==580 || drawx==581|| drawx==584|| drawx==585))
	on=1'b1;
	else if (drawy==45 && (drawx==581 || drawx==582| drawx==583|| drawx==584))
	on=1'b1;
	
	//O
	else if (drawy==36 && (drawx==592 || drawx==593 ||drawx==594||drawx==595||drawx==596))
	on=1'b1;
	else if (drawy==37 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==38 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==39 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==40 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==41 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==42 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==43 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==44 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on=1'b1;
	else if (drawy==45 && (drawx==592 || drawx==593 ||drawx==594||drawx==595||drawx==596))
	on=1'b1;
	
	//R
	else if (drawy==36 && (drawx==602 || drawx==603 ||drawx==604||drawx==605||drawx==606||drawx==607))
	on=1'b1;
	else if (drawy==37 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on=1'b1;
	else if (drawy==38 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on=1'b1;
	else if (drawy==39 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on=1'b1;
	else if (drawy==40 && (drawx==603 || drawx==604||drawx==605|| drawx==606|| drawx==607))
	on=1'b1;
	else if (drawy==41 && (drawx==603 || drawx==604|| drawx==606|| drawx==607))
	on=1'b1;
	else if (drawy==42 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on=1'b1;
	else if (drawy==43 && (drawx==603|| drawx==604|| drawx==607|| drawx==608))
	on=1'b1;
	else if (drawy==44 && (drawx==603|| drawx==604|| drawx==607|| drawx==608))
	on=1'b1;
	else if (drawy==45 && (drawx==602|| drawx==603|| drawx==604|| drawx==607 ||drawx==608))
	on=1'b1;
	
	//E
	else if (drawy==36 && (drawx==613 || drawx==614 ||drawx==615||drawx==616||drawx==617||drawx==618|| drawx==619))
	on=1'b1;
	else if (drawy==37 && (drawx==614 || drawx==615|| drawx==618|| drawx==619))
	on=1'b1;
	else if (drawy==38 && (drawx==614 || drawx==615|| drawx==619))
	on=1'b1;
	else if (drawy==39 && (drawx==614 || drawx==615||drawx==617))
	on=1'b1;
	else if (drawy==40 && (drawx==614 || drawx==615||drawx==616|| drawx==617))
	on=1'b1;
	else if (drawy==41 && (drawx==614 || drawx==615|| drawx==617))
	on=1'b1;
	else if (drawy==42 && (drawx==614 || drawx==615))
	on=1'b1;
	else if (drawy==43 && (drawx==614|| drawx==615|| drawx==619))
	on=1'b1;
	else if (drawy==44 && (drawx==614|| drawx==615|| drawx==618|| drawx==619))
	on=1'b1;
	else if (drawy==45 && (drawx==614|| drawx==614|| drawx==615|| drawx==616|| drawx==617|| drawx==618|| drawx==619))
	on=1'b1;
//	*
//	*
//	*
//	*
//	*
	
	// ____
	else if (drawy==55 && (drawx==582 || drawx==583 ||drawx==584||drawx==585||drawx==586||drawx==587|| drawx==588|| drawx==589|| drawx==590|| drawx==591|| drawx==592))
	begin
	onl0=1'b1;
	end
	else if (drawx==582 && (drawy==57||drawy==58||drawy==59||drawy==60||drawy==61||drawy==62||drawy==63||drawy==64||drawy==65||drawy==66||drawy==67))
	onl1=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==592 && (drawy==57||drawy==58||drawy==59||drawy==60||drawy==61||drawy==62||drawy==63||drawy==64||drawy==65||drawy==66||drawy==67))
	onl2=1'b1;
		// ____
	else if (drawy==69 && (drawx==583 ||drawx==584||drawx==585||drawx==586||drawx==587|| drawx==588|| drawx==589|| drawx==590|| drawx==591))
	onl3=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==582 && (drawy==71||drawy==72||drawy==73||drawy==74||drawy==75||drawy==76||drawy==77||drawy==78||drawy==79||drawy==80||drawy==81))
	onl4=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==592 && (drawy==71||drawy==72||drawy==73||drawy==74||drawy==75||drawy==76||drawy==77||drawy==78||drawy==79||drawy==80||drawy==81))
	onl5=1'b1;
	// ____
	else if (drawy==82 && (drawx==582 || drawx==583 ||drawx==584||drawx==585||drawx==586||drawx==587|| drawx==588|| drawx==589|| drawx==590|| drawx==591|| drawx==592))
	onl6=1'b1;
//digit 2	
	// ____
	else if (drawy==55 && (drawx==597 || drawx==598 ||drawx==599||drawx==600||drawx==601||drawx==602|| drawx==603|| drawx==604|| drawx==605|| drawx==606|| drawx==607))
	onl7=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==597 && (drawy==57||drawy==58||drawy==59||drawy==60||drawy==61||drawy==62||drawy==63||drawy==64||drawy==65||drawy==66||drawy==67))
	onl8=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==607 && (drawy==57||drawy==58||drawy==59||drawy==60||drawy==61||drawy==62||drawy==63||drawy==64||drawy==65||drawy==66||drawy==67))
	onl9=1'b1;
	// ____
	else if (drawy==69 && (drawx==598 ||drawx==599||drawx==600||drawx==601||drawx==602|| drawx==603|| drawx==604|| drawx==605|| drawx==606))
	onl10=1'b1;
		//	*
//	*
//	*
//	*
//	*
	else if (drawx==597 && (drawy==71||drawy==72||drawy==73||drawy==74||drawy==75||drawy==76||drawy==77||drawy==78||drawy==79||drawy==80||drawy==81))
	onl11=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==607 && (drawy==71||drawy==72||drawy==73||drawy==74||drawy==75||drawy==76||drawy==77||drawy==78||drawy==79||drawy==80||drawy==81))
	onl12=1'b1;
	// ____
	else if (drawy==82 && (drawx==597 || drawx==598 ||drawx==599||drawx==600||drawx==601||drawx==602|| drawx==603|| drawx==604|| drawx==605|| drawx==606|| drawx==607))
	onl13=1'b1;

	
	else if (drawx==150 && (drawy==388))
	on=1'b1;
	else if (drawx==151 && (drawy==387 || drawy==389))
	on=1'b1;
	else if (drawx==152 && (drawy==386 || drawy==390))
	on=1'b1;
	else if (drawx==153 && (drawy==385 || drawy==391||drawy==388))
	on=1'b1;
	else if (drawx==154 && (drawy==384 || drawy==392|| drawy==388))
	on=1'b1;
	else if (drawx==155 && (drawy==383 || drawy==393|| drawy==388))
	on=1'b1;
	else if (drawx==156 && (drawy==382 || drawy==394|| drawy==388))
	on=1'b1;
	else if (drawx==157 && (drawy==388))
	on=1'b1;
	else if (drawx==158 && (drawy==388))
	on=1'b1;
	else if (drawx==159 && (drawy==388))
	on=1'b1;
	else if (drawx==160 && (drawy==388))
	on=1'b1;
	else if (drawx==161 && (drawy==388))
	on=1'b1;
	else if (drawx==162 && (drawy==388))
	on=1'b1;
	else if (drawx==163 && (drawy==388))
	on=1'b1;
	else if (drawx==164 && (drawy==388))
	on=1'b1;
	else if (drawx==165 && (drawy==388))
	on=1'b1;
	else if (drawx==166 && (drawy==388))
	on=1'b1;
	
		else if (drawx==485 && (drawy==388))
	on=1'b1;
	else if (drawx==484 && (drawy==387 || drawy==389))
	on=1'b1;
	else if (drawx==483 && (drawy==386 || drawy==390))
	on=1'b1;
	else if (drawx==482 && (drawy==385 || drawy==391||drawy==388))
	on=1'b1;
	else if (drawx==481 && (drawy==384 || drawy==392|| drawy==388))
	on=1'b1;
	else if (drawx==480 && (drawy==383 || drawy==393|| drawy==388))
	on=1'b1;
	else if (drawx==479 && (drawy==382 || drawy==394|| drawy==388))
	on=1'b1;
	else if (drawx==478 && (drawy==388))
	on=1'b1;
	else if (drawx==477 && (drawy==388))
	on=1'b1;
	else if (drawx==476 && (drawy==388))
	on=1'b1;
	else if (drawx==475 && (drawy==388))
	on=1'b1;
	else if (drawx==474 && (drawy==388))
	on=1'b1;
	else if (drawx==473 && (drawy==388))
	on=1'b1;
	else if (drawx==472 && (drawy==388))
	on=1'b1;
	else if (drawx==471 && (drawy==388))
	on=1'b1;
	else if (drawx==470 && (drawy==388))
	on=1'b1;
	else if (drawx==469 && (drawy==388))
	on=1'b1;
	
		else if (drawy==396 && (drawx==266))
	on=1'b1;
	else if (drawy==395 && (drawx==265 || drawx==267))
	on=1'b1;
	else if (drawy==394 && (drawx==264 || drawx==268))
	on=1'b1;
	else if (drawy==393 && (drawx==263 || drawx==269||drawx==266))
	on=1'b1;
	else if (drawy==392 && (drawx==262 || drawx==270|| drawx==266))
	on=1'b1;
	else if (drawy==391 && (drawx==261 || drawx==271|| drawx==266))
	on=1'b1;
	else if (drawy==390 && (drawx==260 || drawx==272|| drawx==266))
	on=1'b1;
	else if (drawy==389 && (drawx==266))
	on=1'b1;
	else if (drawy==388 && (drawx==266))
	on=1'b1;
	else if (drawy==387 && (drawx==266))
	on=1'b1;
	else if (drawy==386 && (drawx==266))
	on=1'b1;
	else if (drawy==385 && (drawx==266))
	on=1'b1;
	else if (drawy==384 && (drawx==266))
	on=1'b1;
	else if (drawy==383 && (drawx==266))
	on=1'b1;
	else if (drawy==382 && (drawx==266))
	on=1'b1;
	else if (drawy==381 && (drawx==266))
	on=1'b1;
	else if (drawy==380 && (drawx==266))
	on=1'b1;
	
	else if (drawy==380 && (drawx==372))
	on=1'b1;
	else if (drawy==381 && (drawx==371 || drawx==373))
	on=1'b1;
	else if (drawy==382 && (drawx==370 || drawx==374))
	on=1'b1;
	else if (drawy==383 && (drawx==369 || drawx==375||drawx==372))
	on=1'b1;
	else if (drawy==384 && (drawx==368 || drawx==376||drawx==372))
	on=1'b1;
	else if (drawy==385 && (drawx==367 || drawx==377||drawx==372))
	on=1'b1;
	else if (drawy==386 && (drawx==366 || drawx==378||drawx==372))
	on=1'b1;
	else if (drawy==387 && (drawx==372))
	on=1'b1;
	else if (drawy==388 && (drawx==372))
	on=1'b1;
	else if (drawy==389 && (drawx==372))
	on=1'b1;
	else if (drawy==390 && (drawx==372))
	on=1'b1;
	else if (drawy==391 && (drawx==372))
	on=1'b1;
	else if (drawy==392 && (drawx==372))
	on=1'b1;
	else if (drawy==393 && (drawx==372))
	on=1'b1;
	else if (drawy==394 && (drawx==372))
	on=1'b1;
	else if (drawy==395 && (drawx==372))
	on=1'b1;
	else if (drawy==396 && (drawx==372))
	on=1'b1;
	
	
	//press 1 - song 1
		else if (drawy==202 && (drawx==220 || drawx==221 ||drawx==222||drawx==223||drawx==224||drawx==225))
	onp1=1'b1;
	else if (drawy==203 && (drawx==221 || drawx==222|| drawx==225|| drawx==226))
	onp1=1'b1;
	else if (drawy==204 && (drawx==221 || drawx==222|| drawx==225|| drawx==226))
	onp1=1'b1;
	else if (drawy==205 && (drawx==221 || drawx==222||drawx==225|| drawx==226))
	onp1=1'b1;
	else if (drawy==206 && (drawx==221 || drawx==222||drawx==223|| drawx==224|| drawx==225))
	onp1=1'b1;
	else if (drawy==207 && (drawx==221 || drawx==222))
	onp1=1'b1;
	else if (drawy==208 && (drawx==221 || drawx==222))
	onp1=1'b1;
	else if (drawy==209 && (drawx==221|| drawx==222))
	onp1=1'b1;
	else if (drawy==210 && (drawx==221|| drawx==222))
	onp1=1'b1;
	else if (drawy==211 && (drawx==220|| drawx==221|| drawx==222|| drawx==223))
	onp1=1'b1;
	
	//r
	else if (drawy==202 && (drawx==231 || drawx==232 ||drawx==233||drawx==234||drawx==235||drawx==236))
	onp1=1'b1;
	else if (drawy==203 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==204 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==205 && (drawx==232 || drawx==233||drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==206 && (drawx==232 || drawx==233||drawx==234|| drawx==235|| drawx==236))
	onp1=1'b1;
	else if (drawy==207 && (drawx==232 || drawx==233|| drawx==235|| drawx==236))
	onp1=1'b1;
	else if (drawy==208 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==209 && (drawx==232|| drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==210 && (drawx==232|| drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==211 && (drawx==231|| drawx==232|| drawx==233|| drawx==237))
	onp1=1'b1;
	
	else if (drawy==202 && (drawx==242 || drawx==243 ||drawx==244||drawx==245||drawx==246||drawx==247|| drawx==248))
	onp1=1'b1;
	else if (drawy==203 && (drawx==243 || drawx==244|| drawx==247|| drawx==248))
	onp1=1'b1;
	else if (drawy==204 && (drawx==243 || drawx==244|| drawx==248))
	onp1=1'b1;
	else if (drawy==205 && (drawx==243 || drawx==244||drawx==246))
	onp1=1'b1;
	else if (drawy==206 && (drawx==243 || drawx==244||drawx==245|| drawx==246))
	onp1=1'b1;
	else if (drawy==207 && (drawx==243 || drawx==244|| drawx==246))
	onp1=1'b1;
	else if (drawy==208 && (drawx==243 || drawx==244))
	onp1=1'b1;
	else if (drawy==209 && (drawx==243|| drawx==244|| drawx==248))
	onp1=1'b1;
	else if (drawy==210 && (drawx==243|| drawx==244|| drawx==247|| drawx==248))
	onp1=1'b1;
	else if (drawy==211 && (drawx==242|| drawx==243|| drawx==244|| drawx==245|| drawx==246|| drawx==247|| drawx==248))
	onp1=1'b1;
	
	//S
	else if (drawy==202 && (drawx==254 || drawx==255 ||drawx==256||drawx==257||drawx==258))
	onp1=1'b1;
	else if (drawy==203 && (drawx==253 || drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==204 && (drawx==253 || drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==205 && (drawx==254 || drawx==255))
	onp1=1'b1;
	else if (drawy==206 && (drawx==255 || drawx==256||drawx==257))
	onp1=1'b1;
	else if (drawy==207 && (drawx==257 || drawx==258))
	onp1=1'b1;
	else if (drawy==208 && (drawx==258 || drawx==259))
	onp1=1'b1;
	else if (drawy==209 && (drawx==253|| drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==210 && (drawx==253|| drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==211 && (drawx==254|| drawx==255|| drawx==256|| drawx==257|| drawx==258))
	onp1=1'b1;
	
	//S
	else if (drawy==202 && (drawx==264 || drawx==265 ||drawx==266||drawx==267||drawx==268))
	onp1=1'b1;
	else if (drawy==203 && (drawx==263 || drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==204 && (drawx==263 || drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==205 && (drawx==264 || drawx==265))
	onp1=1'b1;
	else if (drawy==206 && (drawx==265 || drawx==266||drawx==267))
	onp1=1'b1;
	else if (drawy==207 && (drawx==267 || drawx==268))
	onp1=1'b1;
	else if (drawy==208 && (drawx==268 || drawx==269))
	onp1=1'b1;
	else if (drawy==209 && (drawx==263|| drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==210 && (drawx==263|| drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==211 && (drawx==264|| drawx==265|| drawx==266|| drawx==267|| drawx==268))
	onp1=1'b1;
	
	//1
	else if (drawy==202 && (drawx==277 || drawx==278))
	onp1=1'b1;
	else if (drawy==203 && (drawx==276 || drawx==277|| drawx==278))
	onp1=1'b1;
	else if (drawy==204 && (drawx==275 || drawx==276|| drawx==277|| drawx==278))
	onp1=1'b1;
	else if (drawy==205 && (drawx==277 || drawx==278))
	onp1=1'b1;
	else if (drawy==206 && (drawx==277 || drawx==278))
	onp1=1'b1;
	else if (drawy==207 && (drawx==277 || drawx==278))
	onp1=1'b1;
	else if (drawy==208 && (drawx==277 || drawx==278))
	onp1=1'b1;
	else if (drawy==209 && (drawx==277|| drawx==278))
	onp1=1'b1;
	else if (drawy==210 && (drawx==277|| drawx==278))
	onp1=1'b1;
	else if (drawy==211 && (drawx==275|| drawx==276|| drawx==277|| drawx==278|| drawx==279|| drawx==280))
	onp1=1'b1;
	
	else if (drawy == 206 && (drawx==286|| drawx==287|| drawx==288|| drawx==289|| drawx==290))
	onp1=1'b1;
	
	
	//S
	else if (drawy==202 && (drawx==298 || drawx==299 ||drawx==300||drawx==301||drawx==302))
	onp1=1'b1;
	else if (drawy==203 && (drawx==297 || drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==204 && (drawx==297 || drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==205 && (drawx==298 || drawx==299))
	onp1=1'b1;
	else if (drawy==206 && (drawx==299 || drawx==300||drawx==301))
	onp1=1'b1;
	else if (drawy==207 && (drawx==301 || drawx==302))
	onp1=1'b1;
	else if (drawy==208 && (drawx==302 || drawx==303))
	onp1=1'b1;
	else if (drawy==209 && (drawx==297|| drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==210 && (drawx==297|| drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==211 && (drawx==298|| drawx==299|| drawx==300|| drawx==301|| drawx==302))
	onp1=1'b1;
	
	//O
	else if (drawy==202 && (drawx==309 || drawx==310 ||drawx==311||drawx==312||drawx==313))
	onp1=1'b1;
	else if (drawy==203 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==204 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==205 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==206 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==207 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==208 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==209 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==210 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==211 && (drawx==309|| drawx==310|| drawx==311|| drawx==312|| drawx==313))
	onp1=1'b1;
	
	//N
	else if (drawy==202 && (drawx==317 || drawx==318 ||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==203 && (drawx==317 || drawx==318|| drawx==319|| drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==204 && (drawx==317 || drawx==318|| drawx==319|| drawx==320||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==205 && (drawx==317 || drawx==318|| drawx==319|| drawx==320||drawx==321||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==206 && (drawx==317 || drawx==318|| drawx==320|| drawx==321||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==207 && (drawx==317 || drawx==318|| drawx==321|| drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==208 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	else if (drawy==209 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	else if (drawy==210 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	else if (drawy==211 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	
	//G
	else if (drawy==202 && (drawx==330 || drawx==331 ||drawx==332||drawx==333))
	onp1=1'b1;
	else if (drawy==203 && (drawx==329 || drawx==330|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==204 && (drawx==328 || drawx==329|| drawx==334))
	onp1=1'b1;
	else if (drawy==205 && (drawx==328 || drawx==329))
	onp1=1'b1;
	else if (drawy==206 && (drawx==328 || drawx==329))
	onp1=1'b1;
	else if (drawy==207 && (drawx==328 || drawx==329|| drawx==331|| drawx==332||drawx==333||drawx==334))
	onp1=1'b1;
	else if (drawy==208 && (drawx==328 || drawx==329|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==209 && (drawx==328|| drawx==329|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==210 && (drawx==329 || drawx==330|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==211 && (drawx==330 || drawx==331|| drawx==332|| drawx==334))
	onp1=1'b1;
	
	//1
	else if (drawy==202 && (drawx==341 || drawx==342))
	onp1=1'b1;
	else if (drawy==203 && (drawx==340 || drawx==341|| drawx==342))
	onp1=1'b1;
	else if (drawy==204 && (drawx==339 || drawx==340|| drawx==341|| drawx==342))
	onp1=1'b1;
	else if (drawy==205 && (drawx==341 || drawx==342))
	onp1=1'b1;
	else if (drawy==206 && (drawx==341 || drawx==342))
	onp1=1'b1;
	else if (drawy==207 && (drawx==341 || drawx==342))
	onp1=1'b1;
	else if (drawy==208 && (drawx==341 || drawx==342))
	onp1=1'b1;
	else if (drawy==209 && (drawx==341|| drawx==342))
	onp1=1'b1;
	else if (drawy==210 && (drawx==341|| drawx==342))
	onp1=1'b1;
	else if (drawy==211 && (drawx==339|| drawx==340|| drawx==341|| drawx==342|| drawx==343|| drawx==344))
	onp1=1'b1;
	
	
	
	
	//press 2 - song 2
		else if (drawy==250 && (drawx==220 || drawx==221 ||drawx==222||drawx==223||drawx==224||drawx==225))
	onp1=1'b1;
	else if (drawy==251 && (drawx==221 || drawx==222|| drawx==225|| drawx==226))
	onp1=1'b1;
	else if (drawy==252 && (drawx==221 || drawx==222|| drawx==225|| drawx==226))
	onp1=1'b1;
	else if (drawy==253 && (drawx==221 || drawx==222||drawx==225|| drawx==226))
	onp1=1'b1;
	else if (drawy==254 && (drawx==221 || drawx==222||drawx==223|| drawx==224|| drawx==225))
	onp1=1'b1;
	else if (drawy==255 && (drawx==221 || drawx==222))
	onp1=1'b1;
	else if (drawy==256 && (drawx==221 || drawx==222))
	onp1=1'b1;
	else if (drawy==257 && (drawx==221|| drawx==222))
	onp1=1'b1;
	else if (drawy==258 && (drawx==221|| drawx==222))
	onp1=1'b1;
	else if (drawy==259 && (drawx==220|| drawx==221|| drawx==222|| drawx==223))
	onp1=1'b1;
	
	//r
	else if (drawy==250 && (drawx==231 || drawx==232 ||drawx==233||drawx==234||drawx==235||drawx==236))
	onp1=1'b1;
	else if (drawy==251 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==252 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==253 && (drawx==232 || drawx==233||drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==254 && (drawx==232 || drawx==233||drawx==234|| drawx==235|| drawx==236))
	onp1=1'b1;
	else if (drawy==255 && (drawx==232 || drawx==233|| drawx==235|| drawx==236))
	onp1=1'b1;
	else if (drawy==256 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==257 && (drawx==232|| drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==258 && (drawx==232|| drawx==233|| drawx==236|| drawx==237))
	onp1=1'b1;
	else if (drawy==259 && (drawx==231|| drawx==232|| drawx==233|| drawx==237))
	onp1=1'b1;
	
	else if (drawy==250 && (drawx==242 || drawx==243 ||drawx==244||drawx==245||drawx==246||drawx==247|| drawx==248))
	onp1=1'b1;
	else if (drawy==251 && (drawx==243 || drawx==244|| drawx==247|| drawx==248))
	onp1=1'b1;
	else if (drawy==252 && (drawx==243 || drawx==244|| drawx==248))
	onp1=1'b1;
	else if (drawy==253 && (drawx==243 || drawx==244||drawx==246))
	onp1=1'b1;
	else if (drawy==254 && (drawx==243 || drawx==244||drawx==245|| drawx==246))
	onp1=1'b1;
	else if (drawy==255 && (drawx==243 || drawx==244|| drawx==246))
	onp1=1'b1;
	else if (drawy==256 && (drawx==243 || drawx==244))
	onp1=1'b1;
	else if (drawy==257 && (drawx==243|| drawx==244|| drawx==248))
	onp1=1'b1;
	else if (drawy==258 && (drawx==243|| drawx==244|| drawx==247|| drawx==248))
	onp1=1'b1;
	else if (drawy==259 && (drawx==242|| drawx==243|| drawx==244|| drawx==245|| drawx==246|| drawx==247|| drawx==248))
	onp1=1'b1;
	
	//S
	else if (drawy==250 && (drawx==254 || drawx==255 ||drawx==256||drawx==257||drawx==258))
	onp1=1'b1;
	else if (drawy==251 && (drawx==253 || drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==252 && (drawx==253 || drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==253 && (drawx==254 || drawx==255))
	onp1=1'b1;
	else if (drawy==254 && (drawx==255 || drawx==256||drawx==257))
	onp1=1'b1;
	else if (drawy==255 && (drawx==257 || drawx==258))
	onp1=1'b1;
	else if (drawy==256 && (drawx==258 || drawx==259))
	onp1=1'b1;
	else if (drawy==257 && (drawx==253|| drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==258 && (drawx==253|| drawx==254|| drawx==258|| drawx==259))
	onp1=1'b1;
	else if (drawy==259 && (drawx==254|| drawx==255|| drawx==256|| drawx==257|| drawx==258))
	onp1=1'b1;
	
	//S
	else if (drawy==250 && (drawx==264 || drawx==265 ||drawx==266||drawx==267||drawx==268))
	onp1=1'b1;
	else if (drawy==251 && (drawx==263 || drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==252 && (drawx==263 || drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==253 && (drawx==264 || drawx==265))
	onp1=1'b1;
	else if (drawy==254 && (drawx==265 || drawx==266||drawx==267))
	onp1=1'b1;
	else if (drawy==255 && (drawx==267 || drawx==268))
	onp1=1'b1;
	else if (drawy==256 && (drawx==268 || drawx==269))
	onp1=1'b1;
	else if (drawy==257 && (drawx==263|| drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==258 && (drawx==263|| drawx==264|| drawx==268|| drawx==269))
	onp1=1'b1;
	else if (drawy==259 && (drawx==264|| drawx==265|| drawx==266|| drawx==267|| drawx==268))
	onp1=1'b1;
	
	//1
	else if (drawy==250 && (drawx==276 || drawx==277|| drawx==278|| drawx==279|| drawx==280))
	onp1=1'b1;
	else if (drawy==251 && (drawx==275 || drawx==276|| drawx==280|| drawx==281))
	onp1=1'b1;
	else if (drawy==252 && (drawx==280|| drawx==281))
	onp1=1'b1;
	else if (drawy==253 && (drawx==279 || drawx==280))
	onp1=1'b1;
	else if (drawy==254 && (drawx==278 || drawx==279))
	onp1=1'b1;
	else if (drawy==255 && (drawx==277 || drawx==278))
	onp1=1'b1;
	else if (drawy==256 && (drawx==276 || drawx==277))
	onp1=1'b1;
	else if (drawy==257 && (drawx==275|| drawx==276))
	onp1=1'b1;
	else if (drawy==258 && (drawx==275|| drawx==276|| drawx==280|| drawx==281))
	onp1=1'b1;
	else if (drawy==259 && (drawx==275|| drawx==276|| drawx==277|| drawx==278|| drawx==279|| drawx==280|| drawx==281))
	onp1=1'b1;
	
	else if (drawy == 255 && (drawx==286|| drawx==287|| drawx==288|| drawx==289|| drawx==290))
	onp1=1'b1;
	
	
	//S
	else if (drawy==250 && (drawx==298 || drawx==299 ||drawx==300||drawx==301||drawx==302))
	onp1=1'b1;
	else if (drawy==251 && (drawx==297 || drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==252 && (drawx==297 || drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==253 && (drawx==298 || drawx==299))
	onp1=1'b1;
	else if (drawy==254 && (drawx==299 || drawx==300||drawx==301))
	onp1=1'b1;
	else if (drawy==255 && (drawx==301 || drawx==302))
	onp1=1'b1;
	else if (drawy==256 && (drawx==302 || drawx==303))
	onp1=1'b1;
	else if (drawy==257 && (drawx==297|| drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==258 && (drawx==297|| drawx==298|| drawx==302|| drawx==303))
	onp1=1'b1;
	else if (drawy==259 && (drawx==298|| drawx==299|| drawx==300|| drawx==301|| drawx==302))
	onp1=1'b1;
	
	//O
	else if (drawy==250 && (drawx==309 || drawx==310 ||drawx==311||drawx==312||drawx==313))
	onp1=1'b1;
	else if (drawy==251 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==252 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==253 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==254 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==255 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==256 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==257 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==258 && (drawx==308 || drawx==309|| drawx==313|| drawx==314))
	onp1=1'b1;
	else if (drawy==259 && (drawx==309|| drawx==310|| drawx==311|| drawx==312|| drawx==313))
	onp1=1'b1;
	
	//N
	else if (drawy==250 && (drawx==317 || drawx==318 ||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==251 && (drawx==317 || drawx==318|| drawx==319|| drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==252 && (drawx==317 || drawx==318|| drawx==319|| drawx==320||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==253 && (drawx==317 || drawx==318|| drawx==319|| drawx==320||drawx==321||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==254 && (drawx==317 || drawx==318|| drawx==320|| drawx==321||drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==255 && (drawx==317 || drawx==318|| drawx==321|| drawx==322||drawx==323))
	onp1=1'b1;
	else if (drawy==256 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	else if (drawy==257 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	else if (drawy==258 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	else if (drawy==259 && (drawx==317 || drawx==318|| drawx==322|| drawx==323))
	onp1=1'b1;
	
	//G
	else if (drawy==250 && (drawx==330 || drawx==331 ||drawx==332||drawx==333))
	onp1=1'b1;
	else if (drawy==251 && (drawx==329 || drawx==330|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==252 && (drawx==328 || drawx==329|| drawx==334))
	onp1=1'b1;
	else if (drawy==253 && (drawx==328 || drawx==329))
	onp1=1'b1;
	else if (drawy==254 && (drawx==328 || drawx==329))
	onp1=1'b1;
	else if (drawy==255 && (drawx==328 || drawx==329|| drawx==331|| drawx==332||drawx==333||drawx==334))
	onp1=1'b1;
	else if (drawy==256 && (drawx==328 || drawx==329|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==257 && (drawx==328|| drawx==329|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==258 && (drawx==329 || drawx==330|| drawx==333|| drawx==334))
	onp1=1'b1;
	else if (drawy==259 && (drawx==330 || drawx==331|| drawx==332|| drawx==334))
	onp1=1'b1;
	
	//1
	else if (drawy==250 && (drawx==340 || drawx==341|| drawx==342|| drawx==343|| drawx==344))
	onp1=1'b1;
	else if (drawy==251 && (drawx==339 || drawx==340|| drawx==344|| drawx==345))
	onp1=1'b1;
	else if (drawy==252 && (drawx==344|| drawx==345))
	onp1=1'b1;
	else if (drawy==253 && (drawx==343 || drawx==344))
	onp1=1'b1;
	else if (drawy==254 && (drawx==342 || drawx==343))
	onp1=1'b1;
	else if (drawy==255 && (drawx==341 || drawx==342))
	onp1=1'b1;
	else if (drawy==256 && (drawx==340 || drawx==341))
	onp1=1'b1;
	else if (drawy==257 && (drawx==339|| drawx==340))
	onp1=1'b1;
	else if (drawy==258 && (drawx==339|| drawx==340|| drawx==344|| drawx==345))
	onp1=1'b1;
	else if (drawy==259 && (drawx==339|| drawx==340|| drawx==341|| drawx==342|| drawx==343|| drawx==344|| drawx==345))
	onp1=1'b1;
	
	//Press  (for space)
	else if (drawy==240 && (drawx==220 || drawx==221 ||drawx==222||drawx==223||drawx==224||drawx==225))
	one=1'b1;
	else if (drawy==241 && (drawx==221 || drawx==222|| drawx==225|| drawx==226))
	one=1'b1;
	else if (drawy==242 && (drawx==221 || drawx==222|| drawx==225|| drawx==226))
	one=1'b1;
	else if (drawy==243 && (drawx==221 || drawx==222||drawx==225|| drawx==226))
	one=1'b1;
	else if (drawy==244 && (drawx==221 || drawx==222||drawx==223|| drawx==224|| drawx==225))
	one=1'b1;
	else if (drawy==245 && (drawx==221 || drawx==222))
	one=1'b1;
	else if (drawy==246 && (drawx==221 || drawx==222))
	one=1'b1;
	else if (drawy==247 && (drawx==221|| drawx==222))
	one=1'b1;
	else if (drawy==248 && (drawx==221|| drawx==222))
	one=1'b1;
	else if (drawy==249 && (drawx==220|| drawx==221|| drawx==222|| drawx==223))
	one=1'b1;
	
	//r
	else if (drawy==240 && (drawx==231 || drawx==232 ||drawx==233||drawx==234||drawx==235||drawx==236))
	one=1'b1;
	else if (drawy==241 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	one=1'b1;
	else if (drawy==242 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	one=1'b1;
	else if (drawy==243 && (drawx==232 || drawx==233||drawx==236|| drawx==237))
	one=1'b1;
	else if (drawy==244 && (drawx==232 || drawx==233||drawx==234|| drawx==235|| drawx==236))
	one=1'b1;
	else if (drawy==245 && (drawx==232 || drawx==233|| drawx==235|| drawx==236))
	one=1'b1;
	else if (drawy==246 && (drawx==232 || drawx==233|| drawx==236|| drawx==237))
	one=1'b1;
	else if (drawy==247 && (drawx==232|| drawx==233|| drawx==236|| drawx==237))
	one=1'b1;
	else if (drawy==248 && (drawx==232|| drawx==233|| drawx==236|| drawx==237))
	one=1'b1;
	else if (drawy==249 && (drawx==231|| drawx==232|| drawx==233|| drawx==237))
	one=1'b1;
	
	else if (drawy==240 && (drawx==242 || drawx==243 ||drawx==244||drawx==245||drawx==246||drawx==247|| drawx==248))
	one=1'b1;
	else if (drawy==241 && (drawx==243 || drawx==244|| drawx==247|| drawx==248))
	one=1'b1;
	else if (drawy==242 && (drawx==243 || drawx==244|| drawx==248))
	one=1'b1;
	else if (drawy==243 && (drawx==243 || drawx==244||drawx==246))
	one=1'b1;
	else if (drawy==244 && (drawx==243 || drawx==244||drawx==245|| drawx==246))
	one=1'b1;
	else if (drawy==245 && (drawx==243 || drawx==244|| drawx==246))
	one=1'b1;
	else if (drawy==246 && (drawx==243 || drawx==244))
	one=1'b1;
	else if (drawy==247 && (drawx==243|| drawx==244|| drawx==248))
	one=1'b1;
	else if (drawy==248 && (drawx==243|| drawx==244|| drawx==247|| drawx==248))
	one=1'b1;
	else if (drawy==249 && (drawx==242|| drawx==243|| drawx==244|| drawx==245|| drawx==246|| drawx==247|| drawx==248))
	one=1'b1;
	
	//S
	else if (drawy==240 && (drawx==254 || drawx==255 ||drawx==256||drawx==257||drawx==258))
	one=1'b1;
	else if (drawy==241 && (drawx==253 || drawx==254|| drawx==258|| drawx==259))
	one=1'b1;
	else if (drawy==242 && (drawx==253 || drawx==254|| drawx==258|| drawx==259))
	one=1'b1;
	else if (drawy==243 && (drawx==254 || drawx==255))
	one=1'b1;
	else if (drawy==244 && (drawx==255 || drawx==256||drawx==257))
	one=1'b1;
	else if (drawy==245 && (drawx==257 || drawx==258))
	one=1'b1;
	else if (drawy==246 && (drawx==258 || drawx==259))
	one=1'b1;
	else if (drawy==247 && (drawx==253|| drawx==254|| drawx==258|| drawx==259))
	one=1'b1;
	else if (drawy==248 && (drawx==253|| drawx==254|| drawx==258|| drawx==259))
	one=1'b1;
	else if (drawy==249 && (drawx==254|| drawx==255|| drawx==256|| drawx==257|| drawx==258))
	one=1'b1;
	
	//S
	else if (drawy==240 && (drawx==264 || drawx==265 ||drawx==266||drawx==267||drawx==268))
	one=1'b1;
	else if (drawy==241 && (drawx==263 || drawx==264|| drawx==268|| drawx==269))
	one=1'b1;
	else if (drawy==242 && (drawx==263 || drawx==264|| drawx==268|| drawx==269))
	one=1'b1;
	else if (drawy==243 && (drawx==264 || drawx==265))
	one=1'b1;
	else if (drawy==244 && (drawx==265 || drawx==266||drawx==267))
	one=1'b1;
	else if (drawy==245 && (drawx==267 || drawx==268))
	one=1'b1;
	else if (drawy==246 && (drawx==268 || drawx==269))
	one=1'b1;
	else if (drawy==247 && (drawx==263|| drawx==264|| drawx==268|| drawx==269))
	one=1'b1;
	else if (drawy==248 && (drawx==263|| drawx==264|| drawx==268|| drawx==269))
	one=1'b1;
	else if (drawy==249 && (drawx==264|| drawx==265|| drawx==266|| drawx==267|| drawx==268))
	one=1'b1;
	
	//Space
	//S
	else if (drawy==240 && (drawx==278 || drawx==279 ||drawx==280||drawx==281||drawx==282))
	one=1'b1;
	else if (drawy==241 && (drawx==277 || drawx==278|| drawx==282|| drawx==283))
	one=1'b1;
	else if (drawy==242 && (drawx==277 || drawx==278|| drawx==282|| drawx==283))
	one=1'b1;
	else if (drawy==243 && (drawx==278 || drawx==279))
	one=1'b1;
	else if (drawy==244 && (drawx==279 || drawx==280||drawx==281))
	one=1'b1;
	else if (drawy==245 && (drawx==281 || drawx==282))
	one=1'b1;
	else if (drawy==246 && (drawx==282 || drawx==283))
	one=1'b1;
	else if (drawy==247 && (drawx==277|| drawx==278|| drawx==282|| drawx==283))
	one=1'b1;
	else if (drawy==248 && (drawx==277|| drawx==278|| drawx==282|| drawx==283))
	one=1'b1;
	else if (drawy==249 && (drawx==278|| drawx==279|| drawx==280|| drawx==281|| drawx==282))
	one=1'b1;
	
	else if (drawy==240 && (drawx==288 || drawx==289 ||drawx==291||drawx==291||drawx==292||drawx==293))
	one=1'b1;
	else if (drawy==241 && (drawx==289 || drawx==290|| drawx==293|| drawx==294))
	one=1'b1;
	else if (drawy==242 && (drawx==289 || drawx==290|| drawx==293|| drawx==294))
	one=1'b1;
	else if (drawy==243 && (drawx==289 || drawx==290||drawx==293|| drawx==294))
	one=1'b1;
	else if (drawy==244 && (drawx==289 || drawx==290||drawx==291|| drawx==292|| drawx==293))
	one=1'b1;
	else if (drawy==245 && (drawx==289 || drawx==290))
	one=1'b1;
	else if (drawy==246 && (drawx==289 || drawx==290))
	one=1'b1;
	else if (drawy==247 && (drawx==289|| drawx==290))
	one=1'b1;
	else if (drawy==248 && (drawx==289|| drawx==290))
	one=1'b1;
	else if (drawy==249 && (drawx==288|| drawx==289|| drawx==290|| drawx==291))
	one=1'b1;
	
	else if (drawy==240 && (drawx==302))
	one=1'b1;
	else if (drawy==241 && (drawx==301 || drawx==302|| drawx==303))
	one=1'b1;
	else if (drawy==242 && (drawx==300 || drawx==301|| drawx==303|| drawx==304))
	one=1'b1;
	else if (drawy==243 && (drawx==299 || drawx==300||drawx==304|| drawx==305))
	one=1'b1;
	else if (drawy==244 && (drawx==299 || drawx==300||drawx==305|| drawx==305))
	one=1'b1;
	else if (drawy==245 && (drawx==299 || drawx==300|| drawx==301|| drawx==302|| drawx==303|| drawx==304|| drawx==305))
	one=1'b1;
	else if (drawy==246 && (drawx==299 || drawx==300||drawx==304|| drawx==305))
	one=1'b1;
	else if (drawy==247 && (drawx==299 || drawx==300||drawx==304|| drawx==305))
	one=1'b1;
	else if (drawy==248 && (drawx==299 || drawx==300||drawx==304|| drawx==305))
	one=1'b1;
	else if (drawy==249 && (drawx==299 || drawx==300||drawx==304|| drawx==305))
	one=1'b1;
	
	//C
	else if (drawy==240 && (drawx==313 || drawx==314 ||drawx==315||drawx==316))
	one=1'b1;
	else if (drawy==241 && (drawx==312 || drawx==313|| drawx==316|| drawx==317))
	one=1'b1;
	else if (drawy==242 && (drawx==311 || drawx==312|| drawx==317))
	one=1'b1;
	else if (drawy==243 && (drawx==311 || drawx==312))
	one=1'b1;
	else if (drawy==244 && (drawx==311 || drawx==312))
	one=1'b1;
	else if (drawy==245 && (drawx==311 || drawx==312))
	one=1'b1;
	else if (drawy==246 && (drawx==311 || drawx==312))
	one=1'b1;
	else if (drawy==247 && (drawx==311|| drawx==312|| drawx==317))
	one=1'b1;
	else if (drawy==248 && (drawx==312 || drawx==313|| drawx==316|| drawx==317))
	one=1'b1;
	else if (drawy==249 && (drawx==313 || drawx==314| drawx==315|| drawx==316))
	one=1'b1;
	
	else if (drawy==240 && (drawx==323 || drawx==324 ||drawx==325||drawx==326||drawx==327||drawx==328|| drawx==329))
	one=1'b1;
	else if (drawy==241 && (drawx==324 || drawx==325|| drawx==328|| drawx==329))
	one=1'b1;
	else if (drawy==242 && (drawx==224 || drawx==325|| drawx==329))
	one=1'b1;
	else if (drawy==243 && (drawx==324 || drawx==325||drawx==327))
	one=1'b1;
	else if (drawy==244 && (drawx==324 || drawx==325||drawx==326|| drawx==327))
	one=1'b1;
	else if (drawy==245 && (drawx==324 || drawx==325|| drawx==327))
	one=1'b1;
	else if (drawy==246 && (drawx==324 || drawx==325))
	one=1'b1;
	else if (drawy==247 && (drawx==324|| drawx==325|| drawx==329))
	one=1'b1;
	else if (drawy==248 && (drawx==324|| drawx==325|| drawx==328|| drawx==329))
	one=1'b1;
	else if (drawy==249 && (drawx==323|| drawx==324|| drawx==325|| drawx==326|| drawx==327|| drawx==328|| drawx==329))
	one=1'b1;
	
	
	//HIGH
	else if (drawy==131 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==132 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==133 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==134 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==135 && (drawx==577 || drawx==578 ||drawx==579||drawx==580||drawx==581||drawx==582 || drawx==583))//
	on2=1'b1;
	else if (drawy==136 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==137 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==138 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==139 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
	else if (drawy==140 && (drawx==577 || drawx==578 ||drawx==582||drawx==583))
	on2=1'b1;
		//I
	else if (drawy==131 && (drawx==588|| drawx==589 ||drawx==590||drawx==591))
	on2=1'b1;
	else if (drawy==132 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==133 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==134 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==135 && (drawx==589 || drawx==590))//
	on2=1'b1;
	else if (drawy==136 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==137 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==138 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==139 && (drawx==589 || drawx==590))
	on2=1'b1;
	else if (drawy==140 && (drawx==588|| drawx==589 ||drawx==590||drawx==591))
	on2=1'b1;
	
	//G
	else if (drawy==131 && (drawx==598 || drawx==599 ||drawx==600||drawx==601))
	on2=1'b1;
	else if (drawy==132 && (drawx==597 || drawx==598|| drawx==601|| drawx==602))
	on2=1'b1;
	else if (drawy==133 && (drawx==596 || drawx==597|| drawx==602))
	on2=1'b1;
	else if (drawy==134 && (drawx==596 || drawx==597))
	on2=1'b1;
	else if (drawy==135 && (drawx==596 || drawx==597))
	on2=1'b1;
	else if (drawy==136 && (drawx==596 || drawx==597|| drawx==599|| drawx==600||drawx==601||drawx==602))
	on2=1'b1;
	else if (drawy==137 && (drawx==596 || drawx==597|| drawx==601|| drawx==602))
	on2=1'b1;
	else if (drawy==138 && (drawx==596|| drawx==597|| drawx==601|| drawx==602))
	on2=1'b1;
	else if (drawy==139 && (drawx==597 || drawx==598|| drawx==601|| drawx==602))
	on2=1'b1;
	else if (drawy==140 && (drawx==598 || drawx==599|| drawx==600|| drawx==602))
	on2=1'b1;
	
	else if (drawy==131 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==132 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==133 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==134 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==135 && (drawx==608 || drawx==609 ||drawx==610||drawx==611||drawx==612||drawx==613 || drawx==614))//
	on2=1'b1;
	else if (drawy==136 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==137 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==138 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==139 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	else if (drawy==140 && (drawx==608 || drawx==609 ||drawx==613||drawx==614))
	on2=1'b1;
	
	//SCORE -ADD HIGH
	//S
	else if (drawy==150 && (drawx==569 || drawx==570 ||drawx==571||drawx==572||drawx==573))
	on2=1'b1;
	else if (drawy==151 && (drawx==568 || drawx==569|| drawx==573|| drawx==574))
	on2=1'b1;
	else if (drawy==152 && (drawx==568|| drawx==569|| drawx==573|| drawx==574))
	on2=1'b1;
	else if (drawy==153 && (drawx==569 || drawx==570))
	on2=1'b1;
	else if (drawy==154 && (drawx==570 || drawx==571||drawx==572))
	on2=1'b1;
	else if (drawy==155 && (drawx==572 || drawx==573))
	on2=1'b1;
	else if (drawy==156 && (drawx==573 || drawx==574))
	on2=1'b1;
	else if (drawy==157 && (drawx==568|| drawx==569|| drawx==573|| drawx==574))
	on2=1'b1;
	else if (drawy==158 && (drawx==568|| drawx==569|| drawx==573|| drawx==574))
	on2=1'b1;
	else if (drawy==159 && (drawx==569|| drawx==570|| drawx==571|| drawx==572|| drawx==573))
	on2=1'b1;
	
	//C
	else if (drawy==150 && (drawx==581 || drawx==582 ||drawx==583||drawx==584))
	on2=1'b1;
	else if (drawy==151 && (drawx==580 || drawx==581|| drawx==584|| drawx==585))
	on2=1'b1;
	else if (drawy==152 && (drawx==579 || drawx==580|| drawx==585))
	on2=1'b1;
	else if (drawy==153 && (drawx==579 || drawx==580))
	on2=1'b1;
	else if (drawy==154 && (drawx==579 || drawx==580))
	on2=1'b1;
	else if (drawy==155 && (drawx==579 || drawx==580))
	on2=1'b1;
	else if (drawy==156 && (drawx==579 || drawx==580))
	on2=1'b1;
	else if (drawy==157 && (drawx==579|| drawx==580|| drawx==585))
	on2=1'b1;
	else if (drawy==158 && (drawx==580 || drawx==581|| drawx==584|| drawx==585))
	on2=1'b1;
	else if (drawy==159 && (drawx==581 || drawx==582| drawx==583|| drawx==584))
	on2=1'b1;
	
	//O
	else if (drawy==150 && (drawx==592 || drawx==593 ||drawx==594||drawx==595||drawx==596))
	on2=1'b1;
	else if (drawy==151 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==152 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==153 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==154 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==155 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==156 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==157 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==158 && (drawx==591 || drawx==592|| drawx==596|| drawx==597))
	on2=1'b1;
	else if (drawy==159 && (drawx==592 || drawx==593 ||drawx==594||drawx==595||drawx==596))
	on2=1'b1;
	
	//R
	else if (drawy==150 && (drawx==602 || drawx==603 ||drawx==604||drawx==605||drawx==606||drawx==607))
	on2=1'b1;
	else if (drawy==151 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on2=1'b1;
	else if (drawy==152 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on2=1'b1;
	else if (drawy==153 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on2=1'b1;
	else if (drawy==154 && (drawx==603 || drawx==604||drawx==605|| drawx==606|| drawx==607))
	on2=1'b1;
	else if (drawy==155 && (drawx==603 || drawx==604|| drawx==606|| drawx==607))
	on2=1'b1;
	else if (drawy==156 && (drawx==603 || drawx==604|| drawx==607|| drawx==608))
	on2=1'b1;
	else if (drawy==157 && (drawx==603|| drawx==604|| drawx==607|| drawx==608))
	on2=1'b1;
	else if (drawy==158 && (drawx==603|| drawx==604|| drawx==607|| drawx==608))
	on2=1'b1;
	else if (drawy==159 && (drawx==602|| drawx==603|| drawx==604|| drawx==607 ||drawx==608))
	on2=1'b1;
	
	//E
	else if (drawy==150 && (drawx==613 || drawx==614 ||drawx==615||drawx==616||drawx==617||drawx==618|| drawx==619))
	on2=1'b1;
	else if (drawy==151 && (drawx==614 || drawx==615|| drawx==618|| drawx==619))
	on2=1'b1;
	else if (drawy==152 && (drawx==614 || drawx==615|| drawx==619))
	on2=1'b1;
	else if (drawy==153 && (drawx==614 || drawx==615||drawx==617))
	on2=1'b1;
	else if (drawy==154 && (drawx==614 || drawx==615||drawx==616|| drawx==617))
	on2=1'b1;
	else if (drawy==155 && (drawx==614 || drawx==615|| drawx==617))
	on2=1'b1;
	else if (drawy==156 && (drawx==614 || drawx==615))
	on2=1'b1;
	else if (drawy==157 && (drawx==614|| drawx==615|| drawx==619))
	on2=1'b1;
	else if (drawy==158 && (drawx==614|| drawx==615|| drawx==618|| drawx==619))
	on2=1'b1;
	else if (drawy==159 && (drawx==614|| drawx==614|| drawx==615|| drawx==616|| drawx==617|| drawx==618|| drawx==619))
	on2=1'b1;
//	*
//	*
//	*
//	*
//	*
	
	// ____
	else if (drawy==169 && (drawx==582 || drawx==583 ||drawx==584||drawx==585||drawx==586||drawx==587|| drawx==588|| drawx==589|| drawx==590|| drawx==591|| drawx==592))
	begin
	onl0_=1'b1;
	end
	else if (drawx==582 && (drawy==171||drawy==172||drawy==173||drawy==174||drawy==175||drawy==176||drawy==177||drawy==178||drawy==179||drawy==180||drawy==181))
	onl1_=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==592 && (drawy==171||drawy==172||drawy==173||drawy==174||drawy==175||drawy==176||drawy==177||drawy==178||drawy==179||drawy==180||drawy==181))
	onl2_=1'b1;
		// ____
	else if (drawy==183 && (drawx==583 ||drawx==584||drawx==585||drawx==586||drawx==587|| drawx==588|| drawx==589|| drawx==590|| drawx==591))
	onl3_=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==582 && (drawy==185||drawy==186||drawy==187||drawy==188||drawy==189||drawy==190||drawy==191||drawy==192||drawy==193||drawy==194||drawy==195))
	onl4_=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==592 && (drawy==185||drawy==186||drawy==187||drawy==188||drawy==189||drawy==190||drawy==191||drawy==192||drawy==193||drawy==194||drawy==195))
	onl5_=1'b1;
	// ____
	else if (drawy==197 && (drawx==582 || drawx==583 ||drawx==584||drawx==585||drawx==586||drawx==587|| drawx==588|| drawx==589|| drawx==590|| drawx==591|| drawx==592))
	onl6_=1'b1;
//digit 2	
	// ____
	else if (drawy==169 && (drawx==597 || drawx==598 ||drawx==599||drawx==600||drawx==601||drawx==602|| drawx==603|| drawx==604|| drawx==605|| drawx==606|| drawx==607))
	onl7_=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==597 && (drawy==171||drawy==172||drawy==173||drawy==174||drawy==175||drawy==176||drawy==177||drawy==178||drawy==179||drawy==180||drawy==181))
	onl8_=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==607 && (drawy==171||drawy==172||drawy==173||drawy==174||drawy==175||drawy==176||drawy==177||drawy==178||drawy==179||drawy==180||drawy==181))
	onl9_=1'b1;
	// ____
	else if (drawy==183 && (drawx==598 ||drawx==599||drawx==600||drawx==601||drawx==602|| drawx==603|| drawx==604|| drawx==605|| drawx==606))
	onl10_=1'b1;
		//	*
//	*
//	*
//	*
//	*
	else if (drawx==597 && (drawy==185||drawy==186||drawy==187||drawy==188||drawy==189||drawy==190||drawy==191||drawy==192||drawy==193||drawy==194||drawy==195))
	onl11_=1'b1;
	//	*
//	*
//	*
//	*
//	*
	else if (drawx==607 && (drawy==185||drawy==186||drawy==187||drawy==188||drawy==189||drawy==190||drawy==191||drawy==192||drawy==193||drawy==194||drawy==195))
	onl12_=1'b1;
	// ____
	else if (drawy==197 && (drawx==597 || drawx==598 ||drawx==599||drawx==600||drawx==601||drawx==602|| drawx==603|| drawx==604|| drawx==605|| drawx==606|| drawx==607))
	onl13_=1'b1;

	else 
	begin
	on=1'b0;
	onp1=1'b0;
	one=1'b0;
	onl0=1'b0;
	onl1=1'b0;
	onl2=1'b0;
	onl3=1'b0;
	onl4=1'b0;
	onl5=1'b0;
	onl6=1'b0;
	onl7=1'b0;
	onl8=1'b0;
	onl9=1'b0;
	onl10=1'b0;
	onl11=1'b0;
	onl12=1'b0;
	onl13=1'b0;
	
	on2=1'b0;
	onl0_=1'b0;
	onl1_=1'b0;
	onl2_=1'b0;
	onl3_=1'b0;
	onl4_=1'b0;
	onl5_=1'b0;
	onl6_=1'b0;
	onl7_=1'b0;
	onl8_=1'b0;
	onl9_=1'b0;
	onl10_=1'b0;
	onl11_=1'b0;
	onl12_=1'b0;
	onl13_=1'b0;
	end
	
	end
	endmodule 