#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed int v3 (unsigned short, signed int, signed char, unsigned char);
signed int (*v4) (unsigned short, signed int, signed char, unsigned char) = v3;
extern unsigned short v5 (unsigned short, signed int);
extern unsigned short (*v6) (unsigned short, signed int);
extern signed int v7 (unsigned char, signed int, signed int, unsigned int);
extern signed int (*v8) (unsigned char, signed int, signed int, unsigned int);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned int v11 (unsigned int, signed short, signed short);
extern unsigned int (*v12) (unsigned int, signed short, signed short);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int, signed short, signed short, signed short);
extern signed short (*v18) (unsigned int, signed short, signed short, signed short);
unsigned int v19 (unsigned short, unsigned short, signed short, unsigned int);
unsigned int (*v20) (unsigned short, unsigned short, signed short, unsigned int) = v19;
extern unsigned char v21 (signed char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned int, signed char);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
unsigned short v25 (unsigned int);
unsigned short (*v26) (unsigned int) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v45 = 0;
signed char v44 = 3;
signed int v43 = 1;

unsigned int v29 (void)
{
{
for (;;) {
unsigned short v48 = 1;
unsigned short v47 = 6;
unsigned int v46 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned int v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 6U;
signed short v51 = -3;
signed int v50 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v53, unsigned short v54, signed short v55, unsigned int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 2;
signed short v58 = -3;
unsigned char v57 = 6;
trace++;
switch (trace)
{
case 8: 
{
signed char v60;
unsigned int v61;
unsigned int v62;
signed char v63;
unsigned char v64;
v60 = 2 + 3;
v61 = 0U - v56;
v62 = 0U + v56;
v63 = -2 + -1;
v64 = v21 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 10: 
{
signed char v65;
unsigned int v66;
unsigned int v67;
signed char v68;
unsigned char v69;
v65 = -1 + -3;
v66 = v56 + v56;
v67 = 4U - v56;
v68 = 1 - 0;
v69 = v21 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 12: 
return v56;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v70, signed int v71, signed char v72, unsigned char v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 0;
signed char v75 = 3;
unsigned short v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
