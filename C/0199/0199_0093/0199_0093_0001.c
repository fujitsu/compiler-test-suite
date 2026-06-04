#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned char, unsigned int);
extern unsigned char (*v2) (signed int, signed short, unsigned char, unsigned int);
unsigned short v3 (signed short, unsigned char, unsigned short, signed int);
unsigned short (*v4) (signed short, unsigned char, unsigned short, signed int) = v3;
extern unsigned int v5 (signed char, signed int, signed int);
extern unsigned int (*v6) (signed char, signed int, signed int);
extern signed char v7 (unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (signed short, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned short, signed short);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
extern signed int v17 (unsigned short, signed char, signed int, signed char);
extern signed int (*v18) (unsigned short, signed char, signed int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed char v21 (signed short, unsigned short, signed int, unsigned int);
signed char (*v22) (signed short, unsigned short, signed int, unsigned int) = v21;
extern void v23 (unsigned short, signed int, signed int, signed char);
extern void (*v24) (unsigned short, signed int, signed int, signed char);
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
signed short v27 (signed short);
signed short (*v28) (signed short) = v27;
extern void v29 (unsigned short, signed short, signed short);
extern void (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = -2;
signed int v59 = -2;
signed int v58 = -1;

signed short v27 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 0;
signed short v63 = -1;
unsigned short v62 = 4;
trace++;
switch (trace)
{
case 7: 
return 3;
default: abort ();
}
}
}
}

signed char v21 (signed short v65, unsigned short v66, signed int v67, unsigned int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -1;
unsigned int v70 = 6U;
signed int v69 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v72, unsigned char v73, unsigned short v74, signed int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = 1;
signed short v77 = 2;
signed short v76 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed short v79;
v79 = v11 ();
history[history_index++] = (int)v79;
}
break;
case 9: 
return v74;
case 11: 
return v74;
default: abort ();
}
}
}
}
