#include <stdlib.h>
signed int v1 (signed char, unsigned char, unsigned char, unsigned int);
signed int (*v2) (signed char, unsigned char, unsigned char, unsigned int) = v1;
extern signed int v3 (signed int, signed int, unsigned char);
extern signed int (*v4) (signed int, signed int, unsigned char);
extern void v5 (unsigned short, signed short, signed char);
extern void (*v6) (unsigned short, signed short, signed char);
extern signed int v7 (unsigned short, signed short, signed char);
extern signed int (*v8) (unsigned short, signed short, signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern signed char v13 (unsigned int, unsigned char);
extern signed char (*v14) (unsigned int, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, signed int, signed char);
extern unsigned int (*v20) (unsigned char, unsigned short, signed int, signed char);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed short v23 (signed char, signed int, signed short);
extern signed short (*v24) (signed char, signed int, signed short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v30) (signed short, unsigned char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v43 = -2;
signed char v42 = -2;
unsigned char v41 = 5;

unsigned short v25 (void)
{
{
for (;;) {
unsigned short v46 = 7;
unsigned int v45 = 6U;
signed int v44 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
signed int v49 = -3;
signed short v48 = -2;
unsigned int v47 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = -2;
signed int v52 = -1;
unsigned char v51 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v54, unsigned char v55, unsigned char v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = -4;
unsigned int v59 = 7U;
signed short v58 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v61;
signed int v62;
unsigned char v63;
signed int v64;
v61 = 0 - v60;
v62 = 1 + v60;
v63 = v56 - v56;
v64 = v3 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 2: 
{
unsigned char v65;
unsigned short v66;
signed int v67;
signed char v68;
unsigned int v69;
v65 = v56 + v55;
v66 = 0 - 3;
v67 = v60 + v60;
v68 = v54 - v54;
v69 = v19 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 6: 
{
signed int v70;
signed int v71;
unsigned char v72;
signed int v73;
v70 = 0 - v60;
v71 = -4 + v60;
v72 = 4 - v55;
v73 = v3 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
