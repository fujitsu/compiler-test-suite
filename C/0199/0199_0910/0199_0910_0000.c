#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern unsigned char v7 (signed char, unsigned char);
extern unsigned char (*v8) (signed char, unsigned char);
unsigned short v9 (signed int, signed char, unsigned int);
unsigned short (*v10) (signed int, signed char, unsigned int) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed short v13 (signed int, unsigned int);
extern signed short (*v14) (signed int, unsigned int);
extern signed char v15 (signed short);
extern signed char (*v16) (signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
static signed short v19 (signed short, unsigned char, signed short, unsigned char);
static signed short (*v20) (signed short, unsigned char, signed short, unsigned char) = v19;
extern unsigned int v21 (signed short, signed short);
extern unsigned int (*v22) (signed short, signed short);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
unsigned char v27 (signed short, signed int, unsigned short, unsigned char);
unsigned char (*v28) (signed short, signed int, unsigned short, unsigned char) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned short v32 = 7;
signed char v31 = -2;

unsigned char v27 (signed short v34, signed int v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 2U;
unsigned char v39 = 3;
unsigned int v38 = 2U;
trace++;
switch (trace)
{
case 4: 
{
signed short v41;
unsigned char v42;
signed short v43;
unsigned char v44;
signed short v45;
v41 = v34 + 3;
v42 = v37 + v39;
v43 = v34 - 1;
v44 = v39 - v39;
v45 = v19 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 6: 
{
signed short v46;
unsigned char v47;
signed short v48;
unsigned char v49;
signed short v50;
v46 = v34 + v34;
v47 = v39 + 0;
v48 = -3 - 2;
v49 = 4 + v37;
v50 = v19 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 9: 
return 6;
case 11: 
return v37;
case 14: 
return 6;
default: abort ();
}
}
}
}

static signed short v19 (signed short v51, unsigned char v52, signed short v53, unsigned char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 6;
unsigned int v56 = 7U;
signed char v55 = 0;
trace++;
switch (trace)
{
case 5: 
return 3;
case 7: 
{
unsigned char v58;
v58 = v25 ();
history[history_index++] = (int)v58;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned short v9 (signed int v59, signed char v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 1;
signed int v63 = -2;
unsigned char v62 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
signed short v67 = 2;
signed short v66 = -1;
unsigned short v65 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v68;
unsigned short v69;
v68 = -3 + v66;
v69 = v23 (v68);
history[history_index++] = (int)v69;
}
break;
case 2: 
{
signed short v70;
v70 = v67 - v67;
v5 (v70);
}
break;
case 16: 
return 0;
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
signed int v73;
v73 = v1 ();
history[history_index++] = (int)v73;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
