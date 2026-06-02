#include <stdlib.h>
extern void v1 (unsigned int, signed short, signed int, signed int);
extern void (*v2) (unsigned int, signed short, signed int, signed int);
unsigned short v5 (signed int, unsigned int, signed char, signed int);
unsigned short (*v6) (signed int, unsigned int, signed char, signed int) = v5;
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern void v9 (unsigned char, unsigned short, signed short, signed int);
extern void (*v10) (unsigned char, unsigned short, signed short, signed int);
signed int v11 (unsigned short, signed int, signed int, signed int);
signed int (*v12) (unsigned short, signed int, signed int, signed int) = v11;
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
signed int v19 (unsigned int, signed int);
signed int (*v20) (unsigned int, signed int) = v19;
signed char v21 (unsigned char, signed int, unsigned short, unsigned short);
signed char (*v22) (unsigned char, signed int, unsigned short, unsigned short) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
void v27 (unsigned char, signed char);
void (*v28) (unsigned char, signed char) = v27;
extern signed int v29 (signed short, unsigned int, signed short, signed char);
extern signed int (*v30) (signed short, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v42 = -2;
signed short v41 = -4;
signed short v40 = 2;

void v27 (unsigned char v43, signed char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 7;
signed short v46 = 2;
signed short v45 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned char v48, signed int v49, unsigned short v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 4;
unsigned int v53 = 2U;
unsigned char v52 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v55, signed int v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = -4;
signed int v58 = -4;
signed char v57 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned int v62 = 2U;
signed char v61 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v64;
unsigned int v65;
signed short v66;
signed char v67;
signed int v68;
v64 = 2 - -4;
v65 = v62 + v62;
v66 = 1 + 1;
v67 = v61 + -2;
v68 = v29 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}

signed int v11 (unsigned short v69, signed int v70, signed int v71, signed int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 2;
unsigned short v74 = 5;
signed char v73 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v76, unsigned int v77, signed char v78, signed int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 3;
unsigned char v81 = 0;
unsigned int v80 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
