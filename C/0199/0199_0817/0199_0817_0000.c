#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned int, signed int);
extern signed short (*v2) (signed short, unsigned int, signed int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
signed short v9 (unsigned short, unsigned char, signed int);
signed short (*v10) (unsigned short, unsigned char, signed int) = v9;
signed int v11 (unsigned short, signed short, signed char);
signed int (*v12) (unsigned short, signed short, signed char) = v11;
extern signed char v13 (signed char, signed char, signed short, unsigned char);
extern signed char (*v14) (signed char, signed char, signed short, unsigned char);
extern unsigned int v15 (unsigned short, signed int, unsigned char);
extern unsigned int (*v16) (unsigned short, signed int, unsigned char);
extern unsigned int v17 (unsigned short, signed char, unsigned short);
extern unsigned int (*v18) (unsigned short, signed char, unsigned short);
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
static signed char v21 (signed int, unsigned int, unsigned int, unsigned short);
static signed char (*v22) (signed int, unsigned int, unsigned int, unsigned short) = v21;
extern unsigned int v23 (signed int, unsigned int, unsigned int, signed short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned int, signed short);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed short v32 = -3;
unsigned int v31 = 1U;

static signed char v21 (signed int v34, unsigned int v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 0U;
unsigned int v39 = 5U;
signed char v38 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed int v41;
v41 = v29 ();
history[history_index++] = (int)v41;
}
break;
case 8: 
return -1;
case 10: 
return v38;
default: abort ();
}
}
}
}

signed int v11 (unsigned short v42, signed short v43, signed char v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 7U;
signed char v46 = -3;
unsigned char v45 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v48;
unsigned int v49;
unsigned int v50;
unsigned short v51;
signed char v52;
v48 = 0 - 2;
v49 = 2U + v47;
v50 = v47 - 7U;
v51 = v42 + v42;
v52 = v21 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 9: 
{
signed int v53;
unsigned int v54;
unsigned int v55;
unsigned short v56;
signed char v57;
v53 = -4 + -4;
v54 = 2U - v47;
v55 = v47 - 2U;
v56 = v42 - 6;
v57 = v21 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed short v9 (unsigned short v58, unsigned char v59, signed int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 0;
unsigned short v62 = 2;
signed int v61 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed int v66 = 1;
unsigned char v65 = 7;
signed short v64 = -4;
trace++;
switch (trace)
{
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
signed short v69;
unsigned int v70;
signed int v71;
signed short v72;
v69 = v32 + -4;
v70 = 5U - 1U;
v71 = 3 - 0;
v72 = v1 (v69, v70, v71);
history[history_index++] = (int)v72;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
