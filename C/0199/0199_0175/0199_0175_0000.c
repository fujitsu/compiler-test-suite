#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned char, unsigned char, signed short, signed char);
static void (*v2) (unsigned char, unsigned char, signed short, signed char) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (signed int, signed short);
extern signed char (*v6) (signed int, signed short);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
extern signed short v13 (signed int, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed int);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
static unsigned char v17 (signed int, signed int);
static unsigned char (*v18) (signed int, signed int) = v17;
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
static signed int v21 (signed short, unsigned short);
static signed int (*v22) (signed short, unsigned short) = v21;
unsigned char v23 (unsigned char);
unsigned char (*v24) (unsigned char) = v23;
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (signed char, signed char, unsigned int);
extern signed short (*v28) (signed char, signed char, unsigned int);
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed int v32 = -1;
signed short v31 = -2;

unsigned char v23 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -4;
signed int v36 = 0;
unsigned int v35 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v21 (signed short v38, unsigned short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 2;
unsigned char v41 = 1;
unsigned char v40 = 5;
trace++;
switch (trace)
{
case 6: 
return -3;
case 10: 
return 1;
default: abort ();
}
}
}
}

static unsigned char v17 (signed int v43, signed int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 1U;
unsigned char v46 = 3;
signed short v45 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed int v48;
v48 = v43 - 2;
v25 (v48);
}
break;
case 5: 
{
signed short v49;
unsigned short v50;
signed int v51;
v49 = v45 - -1;
v50 = 7 - 4;
v51 = v21 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 7: 
{
signed int v52;
v52 = v43 + -4;
v25 (v52);
}
break;
case 9: 
{
signed short v53;
unsigned short v54;
signed int v55;
v53 = 3 + -3;
v54 = 0 - 1;
v55 = v21 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 11: 
return v46;
default: abort ();
}
}
}
}

static void v1 (unsigned char v56, unsigned char v57, signed short v58, signed char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 3;
unsigned int v61 = 1U;
unsigned char v60 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v63;
signed char v64;
unsigned int v65;
signed short v66;
v63 = v59 - 0;
v64 = v59 + v59;
v65 = 5U - 3U;
v66 = v27 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 2: 
{
signed int v67;
signed int v68;
unsigned char v69;
v67 = 2 + 1;
v68 = 3 - 1;
v69 = v17 (v67, v68);
history[history_index++] = (int)v69;
}
break;
case 12: 
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
unsigned char v72;
unsigned char v73;
signed short v74;
signed char v75;
v72 = 7 - 2;
v73 = 2 - 7;
v74 = v33 - v33;
v75 = 3 - 1;
v1 (v72, v73, v74, v75);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
