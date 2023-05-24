h_tp: hopen 5010
instrumentData: h_tp "instrument"
RA: instrumentData `RA;
R: instrumentData `R;
NP: instrumentData `NP;
P: instrumentData `P;
Y: instrumentData `Y;
//RA: .035;
//R: 0.04;
//NP: 100000000;
//P: 181;
//Y: 360;
price:(((R-RA)*NP*P)%(1*Y)) * (1%(1+R*(P%Y))
priceDict: `batchID`executionTime`accountRef`uniqueId`marketName`currency`price!(instrumentData`batchID;instrumentData`executionTime;instrumentData`accountRef;instrumentData`uniqueId;instrumentData`marketName;"USD";price);
