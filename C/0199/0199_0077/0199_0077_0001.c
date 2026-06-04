#include <stdlib.h>
unsigned int v1 (unsigned int);
unsigned int (*v2) (unsigned int) = v1;
void v3 (unsigned int, signed int, unsigned char, signed char);
void (*v4) (unsigned int, signed int, unsigned char, signed char) = v3;
extern signed int v5 (unsigned short, unsigned char, unsigned int, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (signed short, unsigned int, signed int, signed int);
extern unsigned char (*v14) (signed short, unsigned int, signed int, signed int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern void v23 (unsigned short, signed short, unsigned char, unsigned char);
extern void (*v24) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v25 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v26) (unsigned int, signed short, unsigned short, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed int, unsigned short, signed short, unsigned short);
extern unsigned int (*v30) (signed int, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = -2;
signed int v46 = -3;
unsigned char v45 = 7;

void v3 (unsigned int v48, signed int v49, unsigned char v50, signed char v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 6;
signed char v53 = 1;
unsigned int v52 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 6U;
signed short v57 = -4;
signed int v56 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v59;
signed short v60;
unsigned char v61;
unsigned char v62;
v59 = 5 - 3;
v60 = -4 - v57;
v61 = 1 + 1;
v62 = 4 - 0;
v23 (v59, v60, v61, v62);
}
break;
case 2: 
{
signed short v63;
unsigned int v64;
signed int v65;
signed int v66;
unsigned char v67;
v63 = 0 + v57;
v64 = v58 + v58;
v65 = v56 - -1;
v66 = 3 + -2;
v67 = v13 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 6: 
{
unsigned short v68;
unsigned char v69;
unsigned int v70;
signed char v71;
signed int v72;
v68 = 0 + 3;
v69 = 2 + 6;
v70 = v58 + v58;
v71 = 3 - -3;
v72 = v5 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 8: 
{
signed int v73;
signed short v74;
unsigned int v75;
v73 = 1 - v56;
v74 = -2 + 3;
v75 = v19 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
{
unsigned char v76;
unsigned short v77;
unsigned char v78;
signed char v79;
signed int v80;
v76 = 4 - 4;
v77 = 5 - 2;
v78 = 6 - 5;
v79 = 2 + -3;
v80 = v9 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 12: 
return v58;
default: abort ();
}
}
}
}
