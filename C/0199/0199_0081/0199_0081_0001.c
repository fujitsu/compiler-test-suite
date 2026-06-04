#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
signed char v3 (unsigned char, signed int, unsigned int, unsigned char);
signed char (*v4) (unsigned char, signed int, unsigned int, unsigned char) = v3;
extern void v5 (signed short, signed int, signed char);
extern void (*v6) (signed short, signed int, signed char);
extern signed int v7 (signed int, unsigned char, signed int, signed char);
extern signed int (*v8) (signed int, unsigned char, signed int, signed char);
extern signed short v9 (unsigned short, signed short, unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, signed short, unsigned short, unsigned short);
extern void v11 (unsigned short, signed char);
extern void (*v12) (unsigned short, signed char);
extern signed short v13 (signed int, signed int, signed short);
extern signed short (*v14) (signed int, signed int, signed short);
void v15 (signed short, signed short);
void (*v16) (signed short, signed short) = v15;
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned int, signed char, signed int, signed short);
extern signed int (*v22) (unsigned int, signed char, signed int, signed short);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
signed short v29 (signed int, unsigned short, unsigned short);
signed short (*v30) (signed int, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v51 = 0;
signed char v50 = 2;
signed short v49 = -4;

signed short v29 (signed int v52, unsigned short v53, unsigned short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 2;
unsigned char v56 = 2;
unsigned int v55 = 2U;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return -3;
case 9: 
return -3;
default: abort ();
}
}
}
}

void v15 (signed short v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 6U;
signed int v61 = 1;
signed int v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v63, signed int v64, unsigned int v65, unsigned char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -3;
signed int v68 = -3;
signed char v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
