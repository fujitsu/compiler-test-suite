#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned int, signed short);
static signed char (*v2) (unsigned int, signed short) = v1;
extern unsigned short v3 (signed int, signed char);
extern unsigned short (*v4) (signed int, signed char);
void v5 (unsigned int, signed char, signed int);
void (*v6) (unsigned int, signed char, signed int) = v5;
signed short v7 (signed char, unsigned int);
signed short (*v8) (signed char, unsigned int) = v7;
extern signed short v9 (signed short, signed short, signed char);
extern signed short (*v10) (signed short, signed short, signed char);
extern unsigned char v11 (signed short, signed int, unsigned char);
extern unsigned char (*v12) (signed short, signed int, unsigned char);
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
extern unsigned int v15 (unsigned char, signed short, unsigned int);
extern unsigned int (*v16) (unsigned char, signed short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
static unsigned int v21 (signed char, unsigned int);
static unsigned int (*v22) (signed char, unsigned int) = v21;
extern unsigned short v23 (unsigned short, signed short, unsigned char);
extern unsigned short (*v24) (unsigned short, signed short, unsigned char);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
static unsigned short v27 (void);
static unsigned short (*v28) (void) = v27;
extern void v29 (unsigned short, signed short, signed int, unsigned char);
extern void (*v30) (unsigned short, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed int v32 = 0;
signed char v31 = -4;

static unsigned short v27 (void)
{
{
for (;;) {
signed int v36 = -2;
signed int v35 = -4;
signed short v34 = -4;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
unsigned short v39 = 5;
signed char v38 = -2;
signed int v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v21 (signed char v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 1;
unsigned short v43 = 3;
signed short v42 = 0;
trace++;
switch (trace)
{
case 5: 
return 0U;
case 9: 
return v41;
default: abort ();
}
}
}
}

signed short v7 (signed char v45, unsigned int v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 3;
unsigned char v48 = 6;
unsigned short v47 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v50, signed char v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -4;
unsigned int v54 = 2U;
unsigned char v53 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned int v56, signed short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 1;
signed char v59 = 1;
unsigned char v58 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v61;
signed short v62;
signed int v63;
unsigned char v64;
v61 = v60 - 4;
v62 = -3 + v57;
v63 = -3 + 2;
v64 = 6 - v58;
v29 (v61, v62, v63, v64);
}
break;
case 2: 
return -1;
case 3: 
return v59;
case 4: 
{
signed char v65;
unsigned int v66;
unsigned int v67;
v65 = v59 - v59;
v66 = 7U - v56;
v67 = v21 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 6: 
{
unsigned short v68;
v68 = v27 ();
history[history_index++] = (int)v68;
}
break;
case 8: 
{
signed char v69;
unsigned int v70;
unsigned int v71;
v69 = v59 - v59;
v70 = 1U + 0U;
v71 = v21 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 10: 
{
signed char v72;
signed char v73;
v72 = -2 + v59;
v73 = v17 (v72);
history[history_index++] = (int)v73;
}
break;
case 12: 
return 2;
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
unsigned int v76;
signed short v77;
signed char v78;
v76 = 4U - v33;
v77 = -4 + 3;
v78 = v1 (v76, v77);
history[history_index++] = (int)v78;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
