#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char, signed char);
static void (*v2) (signed char, signed char) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
signed short v5 (void);
signed short (*v6) (void) = v5;
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed short v9 (unsigned char, signed short, signed int);
extern signed short (*v10) (unsigned char, signed short, signed int);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern unsigned char v13 (signed int, signed int);
extern unsigned char (*v14) (signed int, signed int);
extern signed short v15 (signed short, signed char, unsigned char);
extern signed short (*v16) (signed short, signed char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned short);
extern signed short (*v18) (signed char, unsigned int, unsigned short);
static unsigned char v19 (void);
static unsigned char (*v20) (void) = v19;
extern signed short v21 (signed char, signed short, unsigned int);
extern signed short (*v22) (signed char, signed short, unsigned int);
static signed char v23 (signed short, unsigned int);
static signed char (*v24) (signed short, unsigned int) = v23;
extern unsigned int v25 (unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, signed short);
extern signed short v27 (unsigned short, signed char, signed short);
extern signed short (*v28) (unsigned short, signed char, signed short);
extern unsigned short v29 (signed char, signed int, unsigned char);
extern unsigned short (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed int v32 = -4;
unsigned char v31 = 4;

static signed char v23 (signed short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 5;
signed int v37 = 1;
unsigned short v36 = 6;
trace++;
switch (trace)
{
case 4: 
return 1;
default: abort ();
}
}
}
}

static unsigned char v19 (void)
{
{
for (;;) {
unsigned int v41 = 0U;
signed short v40 = -4;
signed int v39 = -4;
trace++;
switch (trace)
{
case 6: 
{
signed short v42;
v42 = v5 ();
history[history_index++] = (int)v42;
}
break;
case 8: 
{
unsigned short v43;
signed short v44;
unsigned int v45;
v43 = 3 + 7;
v44 = v40 - v40;
v45 = v25 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 14: 
return 5;
case 16: 
return 2;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned char v48 = 1;
signed char v47 = 0;
signed short v46 = 1;
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
signed int v51 = -2;
unsigned char v50 = 6;
signed short v49 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed char v52;
signed int v53;
unsigned char v54;
unsigned short v55;
v52 = -2 + -1;
v53 = v51 + v51;
v54 = 5 - 1;
v55 = v29 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 3: 
{
signed short v56;
unsigned int v57;
signed char v58;
v56 = v49 + -1;
v57 = 3U + 4U;
v58 = v23 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 5: 
{
unsigned char v59;
v59 = v19 ();
history[history_index++] = (int)v59;
}
break;
case 7: 
{
unsigned char v60;
v60 = v19 ();
history[history_index++] = (int)v60;
}
break;
case 10: 
{
signed char v61;
signed int v62;
unsigned char v63;
unsigned short v64;
v61 = -1 - -2;
v62 = v51 + 3;
v63 = v50 + 4;
v64 = v29 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return 0;
case 15: 
return -2;
case 17: 
return 2;
default: abort ();
}
}
}
}

static void v1 (signed char v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 4;
signed short v68 = 2;
signed short v67 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v70;
v70 = v5 ();
history[history_index++] = (int)v70;
}
break;
case 18: 
return;
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
signed char v73;
signed char v74;
v73 = -3 + -2;
v74 = -1 + 1;
v1 (v73, v74);
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
