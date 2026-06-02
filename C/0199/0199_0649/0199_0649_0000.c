#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed short, signed short, signed int, signed char);
static unsigned int (*v2) (signed short, signed short, signed int, signed char) = v1;
extern signed int v3 (unsigned short, unsigned char, unsigned short);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (unsigned short, unsigned short);
signed short (*v8) (unsigned short, unsigned short) = v7;
extern signed char v9 (signed int, signed char, unsigned int, unsigned int);
extern signed char (*v10) (signed int, signed char, unsigned int, unsigned int);
extern void v11 (signed short, unsigned short, signed char, unsigned char);
extern void (*v12) (signed short, unsigned short, signed char, unsigned char);
extern signed int v13 (unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, signed int, unsigned int);
extern signed int v15 (signed short, unsigned short, signed int, signed char);
extern signed int (*v16) (signed short, unsigned short, signed int, signed char);
extern signed char v17 (unsigned int, unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char, signed short);
extern signed char (*v22) (unsigned char, signed short);
unsigned char v23 (unsigned char, signed char, unsigned short, signed char);
unsigned char (*v24) (unsigned char, signed char, unsigned short, signed char) = v23;
extern void v25 (void);
extern void (*v26) (void);
static unsigned char v27 (void);
static unsigned char (*v28) (void) = v27;
extern signed int v29 (signed short, unsigned short, signed int, signed int);
extern signed int (*v30) (signed short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed char v32 = -3;
signed char v31 = 1;

static unsigned char v27 (void)
{
{
for (;;) {
signed char v36 = 3;
signed short v35 = 1;
unsigned short v34 = 6;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v37;
unsigned char v38;
unsigned short v39;
signed int v40;
v37 = v34 - 1;
v38 = 4 + 2;
v39 = 0 + 0;
v40 = v3 (v37, v38, v39);
history[history_index++] = (int)v40;
}
break;
case 5: 
return 3;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v41, signed char v42, unsigned short v43, signed char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 2U;
unsigned int v46 = 6U;
signed short v45 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v48, unsigned short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -1;
unsigned char v51 = 0;
unsigned int v50 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (signed short v53, signed short v54, signed int v55, signed char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 1;
unsigned char v58 = 7;
signed int v57 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v60;
unsigned short v61;
signed int v62;
signed int v63;
signed int v64;
v60 = v53 + v53;
v61 = 0 + 0;
v62 = v55 - v55;
v63 = v57 - 0;
v64 = v29 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 2: 
{
unsigned char v65;
v65 = v27 ();
history[history_index++] = (int)v65;
}
break;
case 6: 
{
unsigned char v66;
signed short v67;
signed char v68;
v66 = v58 - 4;
v67 = v53 + v59;
v68 = v21 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return 6U;
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
signed short v71;
signed short v72;
signed int v73;
signed char v74;
unsigned int v75;
v71 = 2 + -1;
v72 = -2 - -2;
v73 = -2 + 3;
v74 = v32 - v31;
v75 = v1 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
