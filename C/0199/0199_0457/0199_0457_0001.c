#include <stdlib.h>
extern unsigned char v3 (signed short, signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, signed short, unsigned char, unsigned int);
extern unsigned int v5 (unsigned int, signed short, signed short);
extern unsigned int (*v6) (unsigned int, signed short, signed short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed int v9 (unsigned short, signed short);
extern signed int (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned short v21 (unsigned char, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned char, unsigned char, unsigned char);
signed char v23 (signed short, signed int, signed char);
signed char (*v24) (signed short, signed int, signed char) = v23;
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v59 = 5U;
unsigned short v58 = 6;
unsigned short v57 = 4;

unsigned short v27 (void)
{
{
for (;;) {
signed int v62 = 1;
signed char v61 = 3;
unsigned char v60 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed short v63;
signed int v64;
signed char v65;
signed char v66;
v63 = -2 + 0;
v64 = v62 + v62;
v65 = 3 + v61;
v66 = v23 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 9: 
{
signed short v67;
signed int v68;
signed char v69;
signed char v70;
v67 = -1 - -3;
v68 = v62 - v62;
v69 = 2 - v61;
v70 = v23 (v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed char v23 (signed short v71, signed int v72, signed char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -1;
signed char v75 = -1;
unsigned char v74 = 1;
trace++;
switch (trace)
{
case 1: 
return v73;
case 8: 
return v75;
case 10: 
return v73;
default: abort ();
}
}
}
}
