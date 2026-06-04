#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
signed int v11 (signed int, signed int, unsigned int);
signed int (*v12) (signed int, signed int, unsigned int) = v11;
extern signed char v13 (signed short, unsigned int, unsigned short);
extern signed char (*v14) (signed short, unsigned int, unsigned short);
extern unsigned int v15 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned short);
signed short v17 (signed char, unsigned char, unsigned short, signed int);
signed short (*v18) (signed char, unsigned char, unsigned short, signed int) = v17;
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
unsigned int v21 (unsigned short, unsigned int, signed char, unsigned int);
unsigned int (*v22) (unsigned short, unsigned int, signed char, unsigned int) = v21;
extern void v23 (unsigned short, unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned int, signed char, unsigned int);
extern signed char v25 (signed int, signed char, signed int);
extern signed char (*v26) (signed int, signed char, signed int);
unsigned short v27 (unsigned char, signed char, unsigned short, unsigned short);
unsigned short (*v28) (unsigned char, signed char, unsigned short, unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = -2;
signed short v49 = -2;
unsigned char v48 = 0;

unsigned short v27 (unsigned char v51, signed char v52, unsigned short v53, unsigned short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = 1;
unsigned short v56 = 3;
signed short v55 = 3;
trace++;
switch (trace)
{
case 6: 
return v53;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v58, unsigned int v59, signed char v60, unsigned int v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = 3;
signed short v63 = 1;
signed char v62 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v65, unsigned char v66, unsigned short v67, signed int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 0;
unsigned short v70 = 1;
signed char v69 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v72;
unsigned int v73;
signed char v74;
unsigned int v75;
v72 = 1 + v70;
v73 = 2U - 7U;
v74 = v65 + v65;
v75 = 2U - 6U;
v23 (v72, v73, v74, v75);
}
break;
case 12: 
return v71;
default: abort ();
}
}
}
}

signed int v11 (signed int v76, signed int v77, unsigned int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 3U;
unsigned int v80 = 1U;
signed short v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned int v84 = 4U;
unsigned int v83 = 6U;
signed short v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
