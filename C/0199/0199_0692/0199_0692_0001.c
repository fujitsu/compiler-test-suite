#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int, unsigned short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned int, unsigned short, unsigned char);
extern signed short v3 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v4) (unsigned int, unsigned int, signed short, signed char);
extern unsigned char v5 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v6) (unsigned char, signed int, signed short, signed short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (signed char, signed char, signed int);
extern void (*v10) (signed char, signed char, signed int);
void v11 (signed char, unsigned int, unsigned char);
void (*v12) (signed char, unsigned int, unsigned char) = v11;
signed int v15 (unsigned int, unsigned char, signed short);
signed int (*v16) (unsigned int, unsigned char, signed short) = v15;
extern signed char v17 (unsigned short, signed int, signed short, unsigned char);
extern signed char (*v18) (unsigned short, signed int, signed short, unsigned char);
extern signed char v19 (unsigned short, signed short);
extern signed char (*v20) (unsigned short, signed short);
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
signed char v23 (unsigned char, unsigned int, signed int);
signed char (*v24) (unsigned char, unsigned int, signed int) = v23;
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = -3;
unsigned int v58 = 0U;
unsigned int v57 = 4U;

signed char v23 (unsigned char v60, unsigned int v61, signed int v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 1;
signed short v64 = -4;
unsigned short v63 = 6;
trace++;
switch (trace)
{
case 5: 
return -2;
case 7: 
return -2;
case 9: 
return -1;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v66, unsigned char v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 3;
signed int v70 = 0;
signed int v69 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v72, unsigned int v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 2;
signed int v76 = -2;
unsigned int v75 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
