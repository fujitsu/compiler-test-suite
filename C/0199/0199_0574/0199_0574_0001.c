#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned char);
extern unsigned char (*v2) (signed char, signed short, unsigned char);
signed short v3 (unsigned short, unsigned short);
signed short (*v4) (unsigned short, unsigned short) = v3;
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed short v7 (signed char, signed int);
extern signed short (*v8) (signed char, signed int);
extern unsigned char v9 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v10) (signed int, signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, unsigned char, signed short, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
signed char v15 (signed char);
signed char (*v16) (signed char) = v15;
unsigned char v17 (unsigned char, signed int, unsigned short, unsigned short);
unsigned char (*v18) (unsigned char, signed int, unsigned short, unsigned short) = v17;
extern signed short v19 (signed char, unsigned int);
extern signed short (*v20) (signed char, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (signed int, unsigned char, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned char, unsigned int, signed short);
extern unsigned int v25 (signed short, unsigned char, signed char);
extern unsigned int (*v26) (signed short, unsigned char, signed char);
extern unsigned int v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char, signed int);
extern void (*v30) (signed short, unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = 0;
signed short v58 = 2;
signed short v57 = -4;

unsigned char v17 (unsigned char v60, signed int v61, unsigned short v62, unsigned short v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 3;
signed short v65 = -1;
unsigned int v64 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -1;
signed short v69 = 2;
signed int v68 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v71, unsigned short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = -3;
unsigned int v74 = 4U;
signed int v73 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed short v76;
unsigned int v77;
signed char v78;
signed int v79;
v76 = -3 - -2;
v77 = 3U - 2U;
v78 = 3 - v75;
v79 = v73 - v73;
v29 (v76, v77, v78, v79);
}
break;
case 5: 
{
unsigned short v80;
v80 = v13 ();
history[history_index++] = (int)v80;
}
break;
case 7: 
{
unsigned short v81;
v81 = v13 ();
history[history_index++] = (int)v81;
}
break;
case 9: 
{
unsigned int v82;
unsigned int v83;
v82 = v74 + 6U;
v83 = v5 (v82);
history[history_index++] = (int)v83;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}
