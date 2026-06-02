#include <stdlib.h>
unsigned short v1 (signed char);
unsigned short (*v2) (signed char) = v1;
extern unsigned short v3 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, signed int, unsigned char, unsigned short);
signed char v5 (signed short);
signed char (*v6) (signed short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
signed int v21 (unsigned char, signed short);
signed int (*v22) (unsigned char, signed short) = v21;
extern signed short v23 (unsigned char, unsigned int, signed char);
extern signed short (*v24) (unsigned char, unsigned int, signed char);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned short v27 (signed short, unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, signed char, unsigned int);
void v29 (signed int, signed char);
void (*v30) (signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v48 = 0;
signed int v47 = 0;
signed int v46 = -3;

void v29 (signed int v49, signed char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -3;
unsigned short v52 = 0;
unsigned char v51 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v54, signed short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 2;
unsigned int v57 = 6U;
unsigned int v56 = 4U;
trace++;
switch (trace)
{
case 6: 
{
signed short v59;
unsigned int v60;
signed char v61;
unsigned int v62;
unsigned short v63;
v59 = -1 - -2;
v60 = 7U + v56;
v61 = v58 + 1;
v62 = 6U - 3U;
v63 = v27 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 10: 
{
signed short v64;
unsigned int v65;
signed char v66;
unsigned int v67;
unsigned short v68;
v64 = -2 + -2;
v65 = 4U + v56;
v66 = v58 - v58;
v67 = v56 - v56;
v68 = v27 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed char v5 (signed short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 7U;
unsigned char v71 = 0;
signed short v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 1U;
unsigned char v75 = 0;
unsigned short v74 = 3;
trace++;
switch (trace)
{
case 0: 
{
v11 ();
}
break;
case 16: 
return 7;
default: abort ();
}
}
}
}
