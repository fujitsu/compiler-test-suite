#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (signed short);
static unsigned short (*v2) (signed short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
static signed char v5 (signed char, unsigned int, unsigned int, unsigned char);
static signed char (*v6) (signed char, unsigned int, unsigned int, unsigned char) = v5;
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
signed int v9 (signed short, unsigned short, unsigned int, unsigned int);
signed int (*v10) (signed short, unsigned short, unsigned int, unsigned int) = v9;
extern unsigned char v11 (signed int, signed int);
extern unsigned char (*v12) (signed int, signed int);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern signed int v15 (signed int, signed char, signed char, signed int);
extern signed int (*v16) (signed int, signed char, signed char, signed int);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed int v23 (unsigned short, signed short, signed int, signed short);
extern signed int (*v24) (unsigned short, signed short, signed int, signed short);
extern unsigned char v25 (signed char, signed char);
extern unsigned char (*v26) (signed char, signed char);
unsigned short v27 (signed short, signed short, signed short, signed short);
unsigned short (*v28) (signed short, signed short, signed short, signed short) = v27;
extern unsigned char v29 (signed short, signed short);
extern unsigned char (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned int v32 = 0U;
unsigned int v31 = 1U;

unsigned short v27 (signed short v34, signed short v35, signed short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
signed char v39 = -1;
unsigned char v38 = 5;
trace++;
switch (trace)
{
case 5: 
{
signed short v41;
signed short v42;
unsigned char v43;
v41 = v34 + v34;
v42 = v35 + v37;
v43 = v29 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 7: 
{
signed int v44;
signed char v45;
signed char v46;
signed int v47;
signed int v48;
v44 = 1 - -3;
v45 = v39 - v39;
v46 = v39 - v39;
v47 = 1 + -3;
v48 = v15 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 9: 
{
signed int v49;
signed char v50;
signed char v51;
signed int v52;
signed int v53;
v49 = -1 - 1;
v50 = v39 - -4;
v51 = -1 - v39;
v52 = 0 - -3;
v53 = v15 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 13: 
return 6;
case 15: 
return 2;
default: abort ();
}
}
}
}

signed int v9 (signed short v54, unsigned short v55, unsigned int v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 0;
unsigned short v59 = 1;
signed short v58 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v5 (signed char v61, unsigned int v62, unsigned int v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = 2;
signed short v66 = -3;
unsigned char v65 = 4;
trace++;
switch (trace)
{
case 2: 
return v61;
default: abort ();
}
}
}
}

static unsigned short v1 (signed short v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 0;
unsigned int v70 = 6U;
unsigned char v69 = 4;
trace++;
switch (trace)
{
case 0: 
return 4;
case 1: 
{
signed char v72;
unsigned int v73;
unsigned int v74;
unsigned char v75;
signed char v76;
v72 = -4 - 1;
v73 = v70 + v70;
v74 = v70 + v70;
v75 = v69 - 4;
v76 = v5 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 3: 
{
signed int v77;
signed int v78;
unsigned char v79;
v77 = 0 + -4;
v78 = -3 - 3;
v79 = v11 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 17: 
return v71;
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
signed short v82;
unsigned short v83;
v82 = 2 + 1;
v83 = v1 (v82);
history[history_index++] = (int)v83;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
