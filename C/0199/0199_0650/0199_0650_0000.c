#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned short, signed char, unsigned int);
static unsigned int (*v2) (unsigned short, signed char, unsigned int) = v1;
signed short v3 (void);
signed short (*v4) (void) = v3;
signed short v5 (void);
signed short (*v6) (void) = v5;
unsigned short v7 (signed short, signed short);
unsigned short (*v8) (signed short, signed short) = v7;
extern void v9 (signed char, unsigned int);
extern void (*v10) (signed char, unsigned int);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (signed char, unsigned int, signed char);
extern signed short (*v16) (signed char, unsigned int, signed char);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern unsigned short v19 (unsigned char, unsigned char, signed char);
extern unsigned short (*v20) (unsigned char, unsigned char, signed char);
extern signed int v21 (unsigned char, unsigned int, signed int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, signed int, signed short);
signed char v23 (unsigned short, signed short, unsigned char, unsigned char);
signed char (*v24) (unsigned short, signed short, unsigned char, unsigned char) = v23;
extern unsigned int v25 (signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
signed char v29 (signed short, signed char, unsigned int, signed short);
signed char (*v30) (signed short, signed char, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = -2;
signed char v31 = 2;

signed char v29 (signed short v34, signed char v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 0;
signed int v39 = -3;
signed char v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned short v41, signed short v42, unsigned char v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 4;
unsigned char v46 = 5;
unsigned char v45 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v48, signed short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 1U;
signed short v51 = 1;
signed short v50 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned short v55 = 1;
unsigned char v54 = 2;
unsigned char v53 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed short v58 = -4;
signed short v57 = -1;
signed short v56 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned short v59, signed char v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 0;
signed char v63 = -2;
signed short v62 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v65;
v65 = v13 ();
history[history_index++] = (int)v65;
}
break;
case 4: 
{
unsigned char v66;
unsigned int v67;
signed int v68;
signed short v69;
signed int v70;
v66 = 4 - 7;
v67 = 2U - 3U;
v68 = 0 - 2;
v69 = v62 + v62;
v70 = v21 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 6: 
{
unsigned char v71;
unsigned int v72;
signed int v73;
signed short v74;
signed int v75;
v71 = 5 + 6;
v72 = v61 - v61;
v73 = 2 - -4;
v74 = -4 + v62;
v75 = v21 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 8: 
{
signed int v76;
unsigned short v77;
unsigned short v78;
v76 = -2 + -4;
v77 = 7 - v64;
v78 = v11 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v81;
signed char v82;
unsigned int v83;
unsigned int v84;
v81 = 7 - 5;
v82 = -3 + -1;
v83 = 4U - 4U;
v84 = v1 (v81, v82, v83);
history[history_index++] = (int)v84;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
