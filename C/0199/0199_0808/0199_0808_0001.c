#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
signed short v5 (signed short, unsigned char, unsigned char);
signed short (*v6) (signed short, unsigned char, unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (signed int, signed short, signed short, unsigned char);
extern signed short (*v10) (signed int, signed short, signed short, unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern signed char v15 (signed int, signed short, unsigned short);
extern signed char (*v16) (signed int, signed short, unsigned short);
extern unsigned char v17 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, unsigned int, unsigned char);
signed int v19 (signed int, signed int, unsigned short, unsigned char);
signed int (*v20) (signed int, signed int, unsigned short, unsigned char) = v19;
extern void v21 (signed char, signed short, signed char, unsigned short);
extern void (*v22) (signed char, signed short, signed char, unsigned short);
signed int v23 (signed char, signed char);
signed int (*v24) (signed char, signed char) = v23;
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
extern unsigned char v27 (signed short, signed short, unsigned int, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned int, unsigned short);
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v49 = 1;
unsigned short v48 = 5;
signed int v47 = -3;

signed int v23 (signed char v50, signed char v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 2;
unsigned short v53 = 3;
unsigned short v52 = 6;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v55;
signed char v56;
signed short v57;
v55 = 1 - 3;
v56 = v51 - v51;
v57 = v29 (v55, v56);
history[history_index++] = (int)v57;
}
break;
case 6: 
{
unsigned char v58;
signed char v59;
signed short v60;
v58 = 6 - 4;
v59 = v50 + 3;
v60 = v29 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed int v19 (signed int v61, signed int v62, unsigned short v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -3;
signed char v66 = 2;
signed int v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned short v70 = 4;
unsigned int v69 = 0U;
signed int v68 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v71, unsigned char v72, unsigned char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -2;
unsigned short v75 = 4;
signed int v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
