
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9d813103          	ld	sp,-1576(sp) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	404020ef          	jal	ra,80002420 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	5fc000ef          	jal	ra,80001680 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret
	...

0000000080001130 <_ZN5Riscv11TrapConsoleEv>:

.global _ZN5Riscv11TrapConsoleEv
.type _ZN5Riscv11TrapConsoleEv, @function
_ZN5Riscv11TrapConsoleEv:
        # push all registers to stack
        addi sp, sp, -256
    80001130:	f0010113          	addi	sp,sp,-256
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
        .endr
    80001134:	00013023          	sd	zero,0(sp)
    80001138:	00113423          	sd	ra,8(sp)
    8000113c:	00213823          	sd	sp,16(sp)
    80001140:	00313c23          	sd	gp,24(sp)
    80001144:	02413023          	sd	tp,32(sp)
    80001148:	02513423          	sd	t0,40(sp)
    8000114c:	02613823          	sd	t1,48(sp)
    80001150:	02713c23          	sd	t2,56(sp)
    80001154:	04813023          	sd	s0,64(sp)
    80001158:	04913423          	sd	s1,72(sp)
    8000115c:	04a13823          	sd	a0,80(sp)
    80001160:	04b13c23          	sd	a1,88(sp)
    80001164:	06c13023          	sd	a2,96(sp)
    80001168:	06d13423          	sd	a3,104(sp)
    8000116c:	06e13823          	sd	a4,112(sp)
    80001170:	06f13c23          	sd	a5,120(sp)
    80001174:	09013023          	sd	a6,128(sp)
    80001178:	09113423          	sd	a7,136(sp)
    8000117c:	09213823          	sd	s2,144(sp)
    80001180:	09313c23          	sd	s3,152(sp)
    80001184:	0b413023          	sd	s4,160(sp)
    80001188:	0b513423          	sd	s5,168(sp)
    8000118c:	0b613823          	sd	s6,176(sp)
    80001190:	0b713c23          	sd	s7,184(sp)
    80001194:	0d813023          	sd	s8,192(sp)
    80001198:	0d913423          	sd	s9,200(sp)
    8000119c:	0da13823          	sd	s10,208(sp)
    800011a0:	0db13c23          	sd	s11,216(sp)
    800011a4:	0fc13023          	sd	t3,224(sp)
    800011a8:	0fd13423          	sd	t4,232(sp)
    800011ac:	0fe13823          	sd	t5,240(sp)
    800011b0:	0ff13c23          	sd	t6,248(sp)

        call _ZN5Riscv17handleTrapConsoleEv
    800011b4:	678000ef          	jal	ra,8000182c <_ZN5Riscv17handleTrapConsoleEv>

        # pop all registers from stack
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    800011b8:	00013003          	ld	zero,0(sp)
    800011bc:	00813083          	ld	ra,8(sp)
    800011c0:	01013103          	ld	sp,16(sp)
    800011c4:	01813183          	ld	gp,24(sp)
    800011c8:	02013203          	ld	tp,32(sp)
    800011cc:	02813283          	ld	t0,40(sp)
    800011d0:	03013303          	ld	t1,48(sp)
    800011d4:	03813383          	ld	t2,56(sp)
    800011d8:	04013403          	ld	s0,64(sp)
    800011dc:	04813483          	ld	s1,72(sp)
    800011e0:	05013503          	ld	a0,80(sp)
    800011e4:	05813583          	ld	a1,88(sp)
    800011e8:	06013603          	ld	a2,96(sp)
    800011ec:	06813683          	ld	a3,104(sp)
    800011f0:	07013703          	ld	a4,112(sp)
    800011f4:	07813783          	ld	a5,120(sp)
    800011f8:	08013803          	ld	a6,128(sp)
    800011fc:	08813883          	ld	a7,136(sp)
    80001200:	09013903          	ld	s2,144(sp)
    80001204:	09813983          	ld	s3,152(sp)
    80001208:	0a013a03          	ld	s4,160(sp)
    8000120c:	0a813a83          	ld	s5,168(sp)
    80001210:	0b013b03          	ld	s6,176(sp)
    80001214:	0b813b83          	ld	s7,184(sp)
    80001218:	0c013c03          	ld	s8,192(sp)
    8000121c:	0c813c83          	ld	s9,200(sp)
    80001220:	0d013d03          	ld	s10,208(sp)
    80001224:	0d813d83          	ld	s11,216(sp)
    80001228:	0e013e03          	ld	t3,224(sp)
    8000122c:	0e813e83          	ld	t4,232(sp)
    80001230:	0f013f03          	ld	t5,240(sp)
    80001234:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    80001238:	10010113          	addi	sp,sp,256

        sret
    8000123c:	10200073          	sret

0000000080001240 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001240:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001244:	00b29a63          	bne	t0,a1,80001258 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001248:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000124c:	fe029ae3          	bnez	t0,80001240 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001250:	00000513          	li	a0,0
    jr ra                  # Return.
    80001254:	00008067          	ret

0000000080001258 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001258:	00100513          	li	a0,1
    8000125c:	00008067          	ret

0000000080001260 <_Z13thread_createPP3TCBPFvPvES2_>:
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
)
{
    80001260:	fd010113          	addi	sp,sp,-48
    80001264:	02813423          	sd	s0,40(sp)
    80001268:	03010413          	addi	s0,sp,48
    volatile uint64 code = (uint64) 0x11;
    8000126c:	01100793          	li	a5,17
    80001270:	fef43423          	sd	a5,-24(s0)
    volatile uint64 hand = (uint64) handle;
    80001274:	fea43023          	sd	a0,-32(s0)
    volatile uint64 start = (uint64) start_routine;
    80001278:	fcb43c23          	sd	a1,-40(s0)
    volatile uint64 a = (uint64) arg;
    8000127c:	fcc43823          	sd	a2,-48(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001280:	fe843783          	ld	a5,-24(s0)
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (hand));
    80001288:	fe043783          	ld	a5,-32(s0)
    8000128c:	00078593          	mv	a1,a5
    __asm__ volatile("mv a2, %0" : : "r" (start));
    80001290:	fd843783          	ld	a5,-40(s0)
    80001294:	00078613          	mv	a2,a5
    __asm__ volatile("mv a3, %0" : : "r" (a));
    80001298:	fd043783          	ld	a5,-48(s0)
    8000129c:	00078693          	mv	a3,a5

    __asm__ volatile ("ecall");
    800012a0:	00000073          	ecall


    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012a4:	00050513          	mv	a0,a0
    return ret;

}
    800012a8:	0005051b          	sext.w	a0,a0
    800012ac:	02813403          	ld	s0,40(sp)
    800012b0:	03010113          	addi	sp,sp,48
    800012b4:	00008067          	ret

00000000800012b8 <_Z11thread_exitv>:

int thread_exit (){
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    uint64 arg0 = 0x12;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    800012c4:	01200793          	li	a5,18
    800012c8:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    800012cc:	00000073          	ecall

    return 0;
}
    800012d0:	00000513          	li	a0,0
    800012d4:	00813403          	ld	s0,8(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret

00000000800012e0 <_Z15thread_dispatchv>:


void thread_dispatch (){
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00813423          	sd	s0,8(sp)
    800012e8:	01010413          	addi	s0,sp,16
    uint64 arg0 = 0x13;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    800012ec:	01300793          	li	a5,19
    800012f0:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    800012f4:	00000073          	ecall


}
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z4getcv>:

char getc (){
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00113423          	sd	ra,8(sp)
    8000130c:	00813023          	sd	s0,0(sp)
    80001310:	01010413          	addi	s0,sp,16
//
//    char c;
//    __asm__ volatile("mv %0, a0" : "=r" (c));
//    return c;

    return __getc();
    80001314:	00003097          	auipc	ra,0x3
    80001318:	428080e7          	jalr	1064(ra) # 8000473c <__getc>

}
    8000131c:	00813083          	ld	ra,8(sp)
    80001320:	00013403          	ld	s0,0(sp)
    80001324:	01010113          	addi	sp,sp,16
    80001328:	00008067          	ret

000000008000132c <_Z4putcc>:

void putc (char c){
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00113423          	sd	ra,8(sp)
    80001334:	00813023          	sd	s0,0(sp)
    80001338:	01010413          	addi	s0,sp,16
//
//    __asm__ volatile("mv a0, %0" : : "r" (arg0));
//    __asm__ volatile("mv a1, %0" : : "r" (arg1));
//
//    __asm__ volatile ("ecall");
    __putc(c);
    8000133c:	00003097          	auipc	ra,0x3
    80001340:	3c4080e7          	jalr	964(ra) # 80004700 <__putc>
    80001344:	00813083          	ld	ra,8(sp)
    80001348:	00013403          	ld	s0,0(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z8userMainPv>:
#include "../test/printing.hpp"
#include "../h/riscv.hpp"


void userMain(void*)
{
    80001354:	fe010113          	addi	sp,sp,-32
    80001358:	00113c23          	sd	ra,24(sp)
    8000135c:	00813823          	sd	s0,16(sp)
    80001360:	02010413          	addi	s0,sp,32
//    printString("Ulazimo u kernel");
//   // Riscv::popSppSpie();
//    __asm__ volatile ("ecall");
//    printString("Izlazimo iz kernel");
//
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001364:	00004797          	auipc	a5,0x4
    80001368:	66c7b783          	ld	a5,1644(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000136c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("ecall");
    80001370:	00000073          	ecall
//        putc(c);
//    }

//    make user thread
    TCB* idle;
    thread_create(&idle, nullptr, nullptr);
    80001374:	00000613          	li	a2,0
    80001378:	00000593          	li	a1,0
    8000137c:	fe840513          	addi	a0,s0,-24
    80001380:	00000097          	auipc	ra,0x0
    80001384:	ee0080e7          	jalr	-288(ra) # 80001260 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=idle;
    80001388:	00004797          	auipc	a5,0x4
    8000138c:	6587b783          	ld	a5,1624(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001390:	fe843703          	ld	a4,-24(s0)
    80001394:	00e7b023          	sd	a4,0(a5)
    Threads_C_API_test();
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	cbc080e7          	jalr	-836(ra) # 80002054 <_Z18Threads_C_API_testv>
//    for (auto &thread: threads)
//    {
//        delete thread;
//    }
//    printString("Finished\n");
}
    800013a0:	01813083          	ld	ra,24(sp)
    800013a4:	01013403          	ld	s0,16(sp)
    800013a8:	02010113          	addi	sp,sp,32
    800013ac:	00008067          	ret

00000000800013b0 <main>:
#include "../h/riscv.hpp"

extern void userMain(void*);

int main()
{
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00113423          	sd	ra,8(sp)
    800013b8:	00813023          	sd	s0,0(sp)
    800013bc:	01010413          	addi	s0,sp,16
    userMain(nullptr);
    800013c0:	00000513          	li	a0,0
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	f90080e7          	jalr	-112(ra) # 80001354 <_Z8userMainPv>
    return 0;
}
    800013cc:	00000513          	li	a0,0
    800013d0:	00813083          	ld	ra,8(sp)
    800013d4:	00013403          	ld	s0,0(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_ZN3TCB12createThreadEPFvPvES0_Pm>:

//uint64 TCB::timeSliceCounter = 0;
uint64 TCB::id_static=0;

TCB *TCB::createThread(Body body,void *arg,uint64 *stack)
{
    800013e0:	fd010113          	addi	sp,sp,-48
    800013e4:	02113423          	sd	ra,40(sp)
    800013e8:	02813023          	sd	s0,32(sp)
    800013ec:	00913c23          	sd	s1,24(sp)
    800013f0:	01213823          	sd	s2,16(sp)
    800013f4:	01313423          	sd	s3,8(sp)
    800013f8:	03010413          	addi	s0,sp,48
    800013fc:	00050993          	mv	s3,a0
    80001400:	00060913          	mv	s2,a2
    return new TCB(body ,arg ,stack,TIME_SLICE);
    80001404:	04800513          	li	a0,72
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	1b8080e7          	jalr	440(ra) # 800015c0 <_Znwm>
    80001410:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            id(id_static++),
            status(Status::NEW)
    80001414:	01353023          	sd	s3,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001418:	00098a63          	beqz	s3,8000142c <_ZN3TCB12createThreadEPFvPvES0_Pm+0x4c>
    8000141c:	00002537          	lui	a0,0x2
    80001420:	00000097          	auipc	ra,0x0
    80001424:	1c8080e7          	jalr	456(ra) # 800015e8 <_Znam>
    80001428:	0080006f          	j	80001430 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x50>
    8000142c:	00000513          	li	a0,0
            status(Status::NEW)
    80001430:	00a4b423          	sd	a0,8(s1)
    80001434:	00000797          	auipc	a5,0x0
    80001438:	0c878793          	addi	a5,a5,200 # 800014fc <_ZN3TCB13threadWrapperEv>
    8000143c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001440:	04090663          	beqz	s2,8000148c <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
    80001444:	00002637          	lui	a2,0x2
    80001448:	00c90933          	add	s2,s2,a2
            status(Status::NEW)
    8000144c:	0124bc23          	sd	s2,24(s1)
    80001450:	00200793          	li	a5,2
    80001454:	02f4b023          	sd	a5,32(s1)
    80001458:	02048423          	sb	zero,40(s1)
            id(id_static++),
    8000145c:	00004717          	auipc	a4,0x4
    80001460:	5d470713          	addi	a4,a4,1492 # 80005a30 <_ZN3TCB9id_staticE>
    80001464:	00073783          	ld	a5,0(a4)
    80001468:	00178693          	addi	a3,a5,1
    8000146c:	00d73023          	sd	a3,0(a4)
            status(Status::NEW)
    80001470:	02f4bc23          	sd	a5,56(s1)
    80001474:	0404a023          	sw	zero,64(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001478:	02098c63          	beqz	s3,800014b0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xd0>
    8000147c:	00048513          	mv	a0,s1
    80001480:	00000097          	auipc	ra,0x0
    80001484:	4c0080e7          	jalr	1216(ra) # 80001940 <_ZN9Scheduler3putEP3TCB>
    80001488:	0280006f          	j	800014b0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xd0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000148c:	00000913          	li	s2,0
    80001490:	fbdff06f          	j	8000144c <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
    80001494:	00050913          	mv	s2,a0
    80001498:	00048513          	mv	a0,s1
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	174080e7          	jalr	372(ra) # 80001610 <_ZdlPv>
    800014a4:	00090513          	mv	a0,s2
    800014a8:	00005097          	auipc	ra,0x5
    800014ac:	680080e7          	jalr	1664(ra) # 80006b28 <_Unwind_Resume>
}
    800014b0:	00048513          	mv	a0,s1
    800014b4:	02813083          	ld	ra,40(sp)
    800014b8:	02013403          	ld	s0,32(sp)
    800014bc:	01813483          	ld	s1,24(sp)
    800014c0:	01013903          	ld	s2,16(sp)
    800014c4:	00813983          	ld	s3,8(sp)
    800014c8:	03010113          	addi	sp,sp,48
    800014cc:	00008067          	ret

00000000800014d0 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800014d0:	ff010113          	addi	sp,sp,-16
    800014d4:	00813423          	sd	s0,8(sp)
    800014d8:	01010413          	addi	s0,sp,16
    //__asm__ volatile ("ecall");

    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800014dc:	00050793          	mv	a5,a0

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800014e0:	00400713          	li	a4,4
    800014e4:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    800014e8:	00000073          	ecall

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    800014ec:	00078513          	mv	a0,a5
}
    800014f0:	00813403          	ld	s0,8(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	02010413          	addi	s0,sp,32
    //Riscv::popSppSpie();
    running->body(running->arg);
    80001510:	00004497          	auipc	s1,0x4
    80001514:	52048493          	addi	s1,s1,1312 # 80005a30 <_ZN3TCB9id_staticE>
    80001518:	0084b783          	ld	a5,8(s1)
    8000151c:	0007b703          	ld	a4,0(a5)
    80001520:	0307b503          	ld	a0,48(a5)
    80001524:	000700e7          	jalr	a4
    running->setFinished(true);
    80001528:	0084b783          	ld	a5,8(s1)
    void setFinished(bool value) { finished = value; }
    8000152c:	00100713          	li	a4,1
    80001530:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001534:	00000097          	auipc	ra,0x0
    80001538:	f9c080e7          	jalr	-100(ra) # 800014d0 <_ZN3TCB5yieldEv>
}
    8000153c:	01813083          	ld	ra,24(sp)
    80001540:	01013403          	ld	s0,16(sp)
    80001544:	00813483          	ld	s1,8(sp)
    80001548:	02010113          	addi	sp,sp,32
    8000154c:	00008067          	ret

0000000080001550 <_ZN3TCB8dispatchEv>:
{
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	00913423          	sd	s1,8(sp)
    80001560:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001564:	00004497          	auipc	s1,0x4
    80001568:	4d44b483          	ld	s1,1236(s1) # 80005a38 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000156c:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) {
    80001570:	02078c63          	beqz	a5,800015a8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	364080e7          	jalr	868(ra) # 800018d8 <_ZN9Scheduler3getEv>
    8000157c:	00004797          	auipc	a5,0x4
    80001580:	4aa7be23          	sd	a0,1212(a5) # 80005a38 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001584:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001588:	01048513          	addi	a0,s1,16
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	b84080e7          	jalr	-1148(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001594:	01813083          	ld	ra,24(sp)
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	00813483          	ld	s1,8(sp)
    800015a0:	02010113          	addi	sp,sp,32
    800015a4:	00008067          	ret
        status=s;
    800015a8:	00100793          	li	a5,1
    800015ac:	04f4a023          	sw	a5,64(s1)
        Scheduler::put(old);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	38c080e7          	jalr	908(ra) # 80001940 <_ZN9Scheduler3putEP3TCB>
    800015bc:	fb9ff06f          	j	80001574 <_ZN3TCB8dispatchEv+0x24>

00000000800015c0 <_Znwm>:
//#include "../h/memory.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00113423          	sd	ra,8(sp)
    800015c8:	00813023          	sd	s0,0(sp)
    800015cc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800015d0:	00003097          	auipc	ra,0x3
    800015d4:	fd8080e7          	jalr	-40(ra) # 800045a8 <__mem_alloc>
}
    800015d8:	00813083          	ld	ra,8(sp)
    800015dc:	00013403          	ld	s0,0(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Znam>:

void *operator new[](size_t n)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00113423          	sd	ra,8(sp)
    800015f0:	00813023          	sd	s0,0(sp)
    800015f4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800015f8:	00003097          	auipc	ra,0x3
    800015fc:	fb0080e7          	jalr	-80(ra) # 800045a8 <__mem_alloc>
}
    80001600:	00813083          	ld	ra,8(sp)
    80001604:	00013403          	ld	s0,0(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00113423          	sd	ra,8(sp)
    80001618:	00813023          	sd	s0,0(sp)
    8000161c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001620:	00003097          	auipc	ra,0x3
    80001624:	ebc080e7          	jalr	-324(ra) # 800044dc <__mem_free>
}
    80001628:	00813083          	ld	ra,8(sp)
    8000162c:	00013403          	ld	s0,0(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00113423          	sd	ra,8(sp)
    80001640:	00813023          	sd	s0,0(sp)
    80001644:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001648:	00003097          	auipc	ra,0x3
    8000164c:	e94080e7          	jalr	-364(ra) # 800044dc <__mem_free>
    80001650:	00813083          	ld	ra,8(sp)
    80001654:	00013403          	ld	s0,0(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.h"

void Riscv::popSppSpie()
{
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00813423          	sd	s0,8(sp)
    80001668:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000166c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001670:	10200073          	sret
}
    80001674:	00813403          	ld	s0,8(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <_ZN5Riscv20handleSupervisorTrapEv>:

static uint32 firstIns=1;

void Riscv::handleSupervisorTrap()
{
    80001680:	f9010113          	addi	sp,sp,-112
    80001684:	06113423          	sd	ra,104(sp)
    80001688:	06813023          	sd	s0,96(sp)
    8000168c:	04913c23          	sd	s1,88(sp)
    80001690:	05213823          	sd	s2,80(sp)
    80001694:	05313423          	sd	s3,72(sp)
    80001698:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000169c:	142027f3          	csrr	a5,scause
    800016a0:	f8f43823          	sd	a5,-112(s0)
    return scause;
    800016a4:	f9043703          	ld	a4,-112(s0)
    uint64 scause = r_scause();
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800016a8:	00050693          	mv	a3,a0

    if(scause == 0x8000000000000001){
    800016ac:	fff00793          	li	a5,-1
    800016b0:	03f79793          	slli	a5,a5,0x3f
    800016b4:	00178793          	addi	a5,a5,1
    800016b8:	02f70c63          	beq	a4,a5,800016f0 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
        mc_sip(SIP_SSIP);
    }
    else if(firstIns!=0)
    800016bc:	00004797          	auipc	a5,0x4
    800016c0:	2ec7a783          	lw	a5,748(a5) # 800059a8 <_ZL8firstIns>
    800016c4:	04078863          	beqz	a5,80001714 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800016c8:	141027f3          	csrr	a5,sepc
    800016cc:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800016d0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800016d4:	10000713          	li	a4,256
    800016d8:	10073073          	csrc	sstatus,a4
    {
        uint64 sepc = r_sepc();
        mc_sstatus(SSTATUS_SPP);
        firstIns=0;
    800016dc:	00004717          	auipc	a4,0x4
    800016e0:	2c072623          	sw	zero,716(a4) # 800059a8 <_ZL8firstIns>
        w_sepc(sepc + 4);
    800016e4:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800016e8:	14179073          	csrw	sepc,a5
}
    800016ec:	00c0006f          	j	800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800016f0:	00200793          	li	a5,2
    800016f4:	1447b073          	csrc	sip,a5
    }
    else
    {
        // unexpected trap cause
    }
}
    800016f8:	06813083          	ld	ra,104(sp)
    800016fc:	06013403          	ld	s0,96(sp)
    80001700:	05813483          	ld	s1,88(sp)
    80001704:	05013903          	ld	s2,80(sp)
    80001708:	04813983          	ld	s3,72(sp)
    8000170c:	07010113          	addi	sp,sp,112
    80001710:	00008067          	ret
    else if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001714:	ff870793          	addi	a5,a4,-8
    80001718:	00100613          	li	a2,1
    8000171c:	02f67063          	bgeu	a2,a5,8000173c <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    else if (scause == 0x8000000000000009UL)
    80001720:	fff00793          	li	a5,-1
    80001724:	03f79793          	slli	a5,a5,0x3f
    80001728:	00978793          	addi	a5,a5,9
    8000172c:	fcf716e3          	bne	a4,a5,800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
        console_handler();
    80001730:	00003097          	auipc	ra,0x3
    80001734:	044080e7          	jalr	68(ra) # 80004774 <console_handler>
}
    80001738:	fc1ff06f          	j	800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
        if(a0reg==0x11){
    8000173c:	01100793          	li	a5,17
    80001740:	04f68263          	beq	a3,a5,80001784 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
        else if(a0reg==0x12){
    80001744:	01200793          	li	a5,18
    80001748:	0af68063          	beq	a3,a5,800017e8 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        else if(a0reg == 0x13){
    8000174c:	01300793          	li	a5,19
    80001750:	faf694e3          	bne	a3,a5,800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001754:	141027f3          	csrr	a5,sepc
    80001758:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000175c:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001760:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001764:	100027f3          	csrr	a5,sstatus
    80001768:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    8000176c:	fc043903          	ld	s2,-64(s0)
            TCB::dispatch();
    80001770:	00000097          	auipc	ra,0x0
    80001774:	de0080e7          	jalr	-544(ra) # 80001550 <_ZN3TCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001778:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000177c:	14149073          	csrw	sepc,s1
}
    80001780:	f79ff06f          	j	800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001784:	141027f3          	csrr	a5,sepc
    80001788:	faf43423          	sd	a5,-88(s0)
    return sepc;
    8000178c:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80001790:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001794:	100027f3          	csrr	a5,sstatus
    80001798:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000179c:	fa043903          	ld	s2,-96(s0)
            __asm__ volatile("ld a1, 11*8(fp)"); //a1
    800017a0:	05843583          	ld	a1,88(s0)
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
    800017a4:	06043603          	ld	a2,96(s0)
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
    800017a8:	06843683          	ld	a3,104(s0)
            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    800017ac:	00058993          	mv	s3,a1
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
    800017b0:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
    800017b4:	00068593          	mv	a1,a3
            TCB* t = TCB::createThread(arg2,  (void*)arg3, nullptr);    //t je thread_t
    800017b8:	00000613          	li	a2,0
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	c24080e7          	jalr	-988(ra) # 800013e0 <_ZN3TCB12createThreadEPFvPvES0_Pm>
            *arg1=t;
    800017c4:	00a9b023          	sd	a0,0(s3)
            if(t!= nullptr)ret=0;
    800017c8:	00050c63          	beqz	a0,800017e0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800017cc:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r" (ret));
    800017d0:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800017d4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800017d8:	14149073          	csrw	sepc,s1
}
    800017dc:	f1dff06f          	j	800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
            else ret =-1;
    800017e0:	fff00793          	li	a5,-1
    800017e4:	fedff06f          	j	800017d0 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800017e8:	141027f3          	csrr	a5,sepc
    800017ec:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800017f0:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = r_sepc() + 4;
    800017f4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800017f8:	100027f3          	csrr	a5,sstatus
    800017fc:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001800:	fb043903          	ld	s2,-80(s0)
            TCB::running->finished=true;
    80001804:	00004797          	auipc	a5,0x4
    80001808:	1dc7b783          	ld	a5,476(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000180c:	0007b783          	ld	a5,0(a5)
    80001810:	00100713          	li	a4,1
    80001814:	02e78423          	sb	a4,40(a5)
            TCB::dispatch();
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	d38080e7          	jalr	-712(ra) # 80001550 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001820:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001824:	14149073          	csrw	sepc,s1
}
    80001828:	ed1ff06f          	j	800016f8 <_ZN5Riscv20handleSupervisorTrapEv+0x78>

000000008000182c <_ZN5Riscv17handleTrapConsoleEv>:

void Riscv::handleTrapConsole() {
    8000182c:	fe010113          	addi	sp,sp,-32
    80001830:	00113c23          	sd	ra,24(sp)
    80001834:	00813823          	sd	s0,16(sp)
    80001838:	02010413          	addi	s0,sp,32
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000183c:	142027f3          	csrr	a5,scause
    80001840:	fef43423          	sd	a5,-24(s0)
    return scause;
    80001844:	fe843703          	ld	a4,-24(s0)
    uint64 scause = r_scause();
    if (scause == 0x8000000000000009UL) {
    80001848:	fff00793          	li	a5,-1
    8000184c:	03f79793          	slli	a5,a5,0x3f
    80001850:	00978793          	addi	a5,a5,9
    80001854:	02f70263          	beq	a4,a5,80001878 <_ZN5Riscv17handleTrapConsoleEv+0x4c>
        console_handler();
        mc_sip(SIP_SEIP);
    } else if (scause == 0x8000000000000001UL) {
    80001858:	fff00793          	li	a5,-1
    8000185c:	03f79793          	slli	a5,a5,0x3f
    80001860:	00178793          	addi	a5,a5,1
    80001864:	02f70463          	beq	a4,a5,8000188c <_ZN5Riscv17handleTrapConsoleEv+0x60>
        mc_sip(SIP_SSIP);
    }

    80001868:	01813083          	ld	ra,24(sp)
    8000186c:	01013403          	ld	s0,16(sp)
    80001870:	02010113          	addi	sp,sp,32
    80001874:	00008067          	ret
        console_handler();
    80001878:	00003097          	auipc	ra,0x3
    8000187c:	efc080e7          	jalr	-260(ra) # 80004774 <console_handler>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001880:	20000793          	li	a5,512
    80001884:	1447b073          	csrc	sip,a5
}
    80001888:	fe1ff06f          	j	80001868 <_ZN5Riscv17handleTrapConsoleEv+0x3c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000188c:	00200793          	li	a5,2
    80001890:	1447b073          	csrc	sip,a5
    80001894:	fd5ff06f          	j	80001868 <_ZN5Riscv17handleTrapConsoleEv+0x3c>

0000000080001898 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001898:	ff010113          	addi	sp,sp,-16
    8000189c:	00813423          	sd	s0,8(sp)
    800018a0:	01010413          	addi	s0,sp,16
    800018a4:	00100793          	li	a5,1
    800018a8:	00f50863          	beq	a0,a5,800018b8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800018ac:	00813403          	ld	s0,8(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret
    800018b8:	000107b7          	lui	a5,0x10
    800018bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800018c0:	fef596e3          	bne	a1,a5,800018ac <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800018c4:	00004797          	auipc	a5,0x4
    800018c8:	17c78793          	addi	a5,a5,380 # 80005a40 <_ZN9Scheduler16readyThreadQueueE>
    800018cc:	0007b023          	sd	zero,0(a5)
    800018d0:	0007b423          	sd	zero,8(a5)
    800018d4:	fd9ff06f          	j	800018ac <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800018d8 <_ZN9Scheduler3getEv>:
{
    800018d8:	fe010113          	addi	sp,sp,-32
    800018dc:	00113c23          	sd	ra,24(sp)
    800018e0:	00813823          	sd	s0,16(sp)
    800018e4:	00913423          	sd	s1,8(sp)
    800018e8:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800018ec:	00004517          	auipc	a0,0x4
    800018f0:	15453503          	ld	a0,340(a0) # 80005a40 <_ZN9Scheduler16readyThreadQueueE>
    800018f4:	04050263          	beqz	a0,80001938 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800018f8:	00853783          	ld	a5,8(a0)
    800018fc:	00004717          	auipc	a4,0x4
    80001900:	14f73223          	sd	a5,324(a4) # 80005a40 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001904:	02078463          	beqz	a5,8000192c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001908:	00053483          	ld	s1,0(a0)
        delete elem;
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	d04080e7          	jalr	-764(ra) # 80001610 <_ZdlPv>
}
    80001914:	00048513          	mv	a0,s1
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret
        if (!head) { tail = 0; }
    8000192c:	00004797          	auipc	a5,0x4
    80001930:	1007be23          	sd	zero,284(a5) # 80005a48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001934:	fd5ff06f          	j	80001908 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001938:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000193c:	fd9ff06f          	j	80001914 <_ZN9Scheduler3getEv+0x3c>

0000000080001940 <_ZN9Scheduler3putEP3TCB>:
{
    80001940:	fe010113          	addi	sp,sp,-32
    80001944:	00113c23          	sd	ra,24(sp)
    80001948:	00813823          	sd	s0,16(sp)
    8000194c:	00913423          	sd	s1,8(sp)
    80001950:	02010413          	addi	s0,sp,32
    80001954:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001958:	01000513          	li	a0,16
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	c64080e7          	jalr	-924(ra) # 800015c0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001964:	00953023          	sd	s1,0(a0)
    80001968:	00053423          	sd	zero,8(a0)
        if (tail)
    8000196c:	00004797          	auipc	a5,0x4
    80001970:	0dc7b783          	ld	a5,220(a5) # 80005a48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001974:	02078263          	beqz	a5,80001998 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001978:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000197c:	00004797          	auipc	a5,0x4
    80001980:	0ca7b623          	sd	a0,204(a5) # 80005a48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001984:	01813083          	ld	ra,24(sp)
    80001988:	01013403          	ld	s0,16(sp)
    8000198c:	00813483          	ld	s1,8(sp)
    80001990:	02010113          	addi	sp,sp,32
    80001994:	00008067          	ret
            head = tail = elem;
    80001998:	00004797          	auipc	a5,0x4
    8000199c:	0a878793          	addi	a5,a5,168 # 80005a40 <_ZN9Scheduler16readyThreadQueueE>
    800019a0:	00a7b423          	sd	a0,8(a5)
    800019a4:	00a7b023          	sd	a0,0(a5)
    800019a8:	fddff06f          	j	80001984 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800019ac <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800019ac:	ff010113          	addi	sp,sp,-16
    800019b0:	00113423          	sd	ra,8(sp)
    800019b4:	00813023          	sd	s0,0(sp)
    800019b8:	01010413          	addi	s0,sp,16
    800019bc:	000105b7          	lui	a1,0x10
    800019c0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800019c4:	00100513          	li	a0,1
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	ed0080e7          	jalr	-304(ra) # 80001898 <_Z41__static_initialization_and_destruction_0ii>
    800019d0:	00813083          	ld	ra,8(sp)
    800019d4:	00013403          	ld	s0,0(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_Z15printStringMinePKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printStringMine(char const *string)
{
    800019e0:	fd010113          	addi	sp,sp,-48
    800019e4:	02113423          	sd	ra,40(sp)
    800019e8:	02813023          	sd	s0,32(sp)
    800019ec:	00913c23          	sd	s1,24(sp)
    800019f0:	01213823          	sd	s2,16(sp)
    800019f4:	03010413          	addi	s0,sp,48
    800019f8:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019fc:	100027f3          	csrr	a5,sstatus
    80001a00:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001a04:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001a08:	00200793          	li	a5,2
    80001a0c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001a10:	0004c503          	lbu	a0,0(s1)
    80001a14:	00050a63          	beqz	a0,80001a28 <_Z15printStringMinePKc+0x48>
    {
        __putc(*string);
    80001a18:	00003097          	auipc	ra,0x3
    80001a1c:	ce8080e7          	jalr	-792(ra) # 80004700 <__putc>
        string++;
    80001a20:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001a24:	fedff06f          	j	80001a10 <_Z15printStringMinePKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001a28:	0009091b          	sext.w	s2,s2
    80001a2c:	00297913          	andi	s2,s2,2
    80001a30:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a34:	10092073          	csrs	sstatus,s2
}
    80001a38:	02813083          	ld	ra,40(sp)
    80001a3c:	02013403          	ld	s0,32(sp)
    80001a40:	01813483          	ld	s1,24(sp)
    80001a44:	01013903          	ld	s2,16(sp)
    80001a48:	03010113          	addi	sp,sp,48
    80001a4c:	00008067          	ret

0000000080001a50 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001a50:	fc010113          	addi	sp,sp,-64
    80001a54:	02113c23          	sd	ra,56(sp)
    80001a58:	02813823          	sd	s0,48(sp)
    80001a5c:	02913423          	sd	s1,40(sp)
    80001a60:	03213023          	sd	s2,32(sp)
    80001a64:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a68:	100027f3          	csrr	a5,sstatus
    80001a6c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001a70:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001a74:	00200793          	li	a5,2
    80001a78:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001a7c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001a80:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001a84:	00a00613          	li	a2,10
    80001a88:	02c5773b          	remuw	a4,a0,a2
    80001a8c:	02071693          	slli	a3,a4,0x20
    80001a90:	0206d693          	srli	a3,a3,0x20
    80001a94:	00003717          	auipc	a4,0x3
    80001a98:	56c70713          	addi	a4,a4,1388 # 80005000 <_ZZ12printIntegermE6digits>
    80001a9c:	00d70733          	add	a4,a4,a3
    80001aa0:	00074703          	lbu	a4,0(a4)
    80001aa4:	fe040693          	addi	a3,s0,-32
    80001aa8:	009687b3          	add	a5,a3,s1
    80001aac:	0014849b          	addiw	s1,s1,1
    80001ab0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001ab4:	0005071b          	sext.w	a4,a0
    80001ab8:	02c5553b          	divuw	a0,a0,a2
    80001abc:	00900793          	li	a5,9
    80001ac0:	fce7e2e3          	bltu	a5,a4,80001a84 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001ac4:	fff4849b          	addiw	s1,s1,-1
    80001ac8:	0004ce63          	bltz	s1,80001ae4 <_Z12printIntegerm+0x94>
    80001acc:	fe040793          	addi	a5,s0,-32
    80001ad0:	009787b3          	add	a5,a5,s1
    80001ad4:	ff07c503          	lbu	a0,-16(a5)
    80001ad8:	00003097          	auipc	ra,0x3
    80001adc:	c28080e7          	jalr	-984(ra) # 80004700 <__putc>
    80001ae0:	fe5ff06f          	j	80001ac4 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ae4:	0009091b          	sext.w	s2,s2
    80001ae8:	00297913          	andi	s2,s2,2
    80001aec:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001af0:	10092073          	csrs	sstatus,s2
    80001af4:	03813083          	ld	ra,56(sp)
    80001af8:	03013403          	ld	s0,48(sp)
    80001afc:	02813483          	ld	s1,40(sp)
    80001b00:	02013903          	ld	s2,32(sp)
    80001b04:	04010113          	addi	sp,sp,64
    80001b08:	00008067          	ret

0000000080001b0c <_Z9mem_allocm>:

#include "../h/memory.h"
#include "../h/system.h"

void* mem_alloc(size_t size)
{
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00813423          	sd	s0,8(sp)
    80001b14:	01010413          	addi	s0,sp,16
    uint64 num = MEM_ALLOC;
    void *addr;
    size_t blkSize=size/MEM_BLOCK_SIZE;
    80001b18:	00655793          	srli	a5,a0,0x6
    if(size % MEM_BLOCK_SIZE != 0)
    80001b1c:	03f57513          	andi	a0,a0,63
    80001b20:	00050463          	beqz	a0,80001b28 <_Z9mem_allocm+0x1c>
    {
        blkSize+= 1;
    80001b24:	00178793          	addi	a5,a5,1
    }
    __asm__ volatile("mv a1, %0" : : "r" (blkSize));
    80001b28:	00078593          	mv	a1,a5
    __asm__ volatile("mv a0, %[num]" : : [num] "r" (num));
    80001b2c:	00100793          	li	a5,1
    80001b30:	00078513          	mv	a0,a5
    //printInt(num);
    ECALL
    80001b34:	00000073          	ecall

    __asm__ volatile("mv %[res], a0" : [res] "=r" (addr));
    80001b38:	00050513          	mv	a0,a0
    return (char*)addr;
}
    80001b3c:	00813403          	ld	s0,8(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <_Z8mem_freePv>:

int mem_free(void* ptr)
{
    80001b48:	ff010113          	addi	sp,sp,-16
    80001b4c:	00813423          	sd	s0,8(sp)
    80001b50:	01010413          	addi	s0,sp,16
    uint64 num = MEM_FREE;
    int ret;

    asm volatile("mv a1, %0" : : "r" (ptr));
    80001b54:	00050593          	mv	a1,a0
    asm volatile("mv a0, %[num]" : : [num] "r" (num));
    80001b58:	00200793          	li	a5,2
    80001b5c:	00078513          	mv	a0,a5
    ECALL
    80001b60:	00000073          	ecall
    asm volatile("mv %[res], a0" : [res] "=r" (ret));
    80001b64:	00050513          	mv	a0,a0

    return ret;

    80001b68:	0005051b          	sext.w	a0,a0
    80001b6c:	00813403          	ld	s0,8(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001b78:	fe010113          	addi	sp,sp,-32
    80001b7c:	00113c23          	sd	ra,24(sp)
    80001b80:	00813823          	sd	s0,16(sp)
    80001b84:	00913423          	sd	s1,8(sp)
    80001b88:	01213023          	sd	s2,0(sp)
    80001b8c:	02010413          	addi	s0,sp,32
    80001b90:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001b94:	00100793          	li	a5,1
    80001b98:	02a7f863          	bgeu	a5,a0,80001bc8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001b9c:	00a00793          	li	a5,10
    80001ba0:	02f577b3          	remu	a5,a0,a5
    80001ba4:	02078e63          	beqz	a5,80001be0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001ba8:	fff48513          	addi	a0,s1,-1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	fcc080e7          	jalr	-52(ra) # 80001b78 <_ZL9fibonaccim>
    80001bb4:	00050913          	mv	s2,a0
    80001bb8:	ffe48513          	addi	a0,s1,-2
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	fbc080e7          	jalr	-68(ra) # 80001b78 <_ZL9fibonaccim>
    80001bc4:	00a90533          	add	a0,s2,a0
}
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	00013903          	ld	s2,0(sp)
    80001bd8:	02010113          	addi	sp,sp,32
    80001bdc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001be0:	fffff097          	auipc	ra,0xfffff
    80001be4:	700080e7          	jalr	1792(ra) # 800012e0 <_Z15thread_dispatchv>
    80001be8:	fc1ff06f          	j	80001ba8 <_ZL9fibonaccim+0x30>

0000000080001bec <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	00913423          	sd	s1,8(sp)
    80001bfc:	01213023          	sd	s2,0(sp)
    80001c00:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001c04:	00a00493          	li	s1,10
    80001c08:	0400006f          	j	80001c48 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001c0c:	00003517          	auipc	a0,0x3
    80001c10:	40450513          	addi	a0,a0,1028 # 80005010 <_ZZ12printIntegermE6digits+0x10>
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	53c080e7          	jalr	1340(ra) # 80002150 <_Z11printStringPKc>
    80001c1c:	00000613          	li	a2,0
    80001c20:	00a00593          	li	a1,10
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	6d8080e7          	jalr	1752(ra) # 80002300 <_Z8printIntiii>
    80001c30:	00003517          	auipc	a0,0x3
    80001c34:	5e850513          	addi	a0,a0,1512 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	518080e7          	jalr	1304(ra) # 80002150 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001c40:	0014849b          	addiw	s1,s1,1
    80001c44:	0ff4f493          	andi	s1,s1,255
    80001c48:	00c00793          	li	a5,12
    80001c4c:	fc97f0e3          	bgeu	a5,s1,80001c0c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001c50:	00003517          	auipc	a0,0x3
    80001c54:	3c850513          	addi	a0,a0,968 # 80005018 <_ZZ12printIntegermE6digits+0x18>
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	4f8080e7          	jalr	1272(ra) # 80002150 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001c60:	00500313          	li	t1,5
    thread_dispatch();
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	67c080e7          	jalr	1660(ra) # 800012e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001c6c:	01000513          	li	a0,16
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	f08080e7          	jalr	-248(ra) # 80001b78 <_ZL9fibonaccim>
    80001c78:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001c7c:	00003517          	auipc	a0,0x3
    80001c80:	3ac50513          	addi	a0,a0,940 # 80005028 <_ZZ12printIntegermE6digits+0x28>
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	4cc080e7          	jalr	1228(ra) # 80002150 <_Z11printStringPKc>
    80001c8c:	00000613          	li	a2,0
    80001c90:	00a00593          	li	a1,10
    80001c94:	0009051b          	sext.w	a0,s2
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	668080e7          	jalr	1640(ra) # 80002300 <_Z8printIntiii>
    80001ca0:	00003517          	auipc	a0,0x3
    80001ca4:	57850513          	addi	a0,a0,1400 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	4a8080e7          	jalr	1192(ra) # 80002150 <_Z11printStringPKc>
    80001cb0:	0400006f          	j	80001cf0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001cb4:	00003517          	auipc	a0,0x3
    80001cb8:	35c50513          	addi	a0,a0,860 # 80005010 <_ZZ12printIntegermE6digits+0x10>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	494080e7          	jalr	1172(ra) # 80002150 <_Z11printStringPKc>
    80001cc4:	00000613          	li	a2,0
    80001cc8:	00a00593          	li	a1,10
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	630080e7          	jalr	1584(ra) # 80002300 <_Z8printIntiii>
    80001cd8:	00003517          	auipc	a0,0x3
    80001cdc:	54050513          	addi	a0,a0,1344 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	470080e7          	jalr	1136(ra) # 80002150 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001ce8:	0014849b          	addiw	s1,s1,1
    80001cec:	0ff4f493          	andi	s1,s1,255
    80001cf0:	00f00793          	li	a5,15
    80001cf4:	fc97f0e3          	bgeu	a5,s1,80001cb4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80001cf8:	00003517          	auipc	a0,0x3
    80001cfc:	34050513          	addi	a0,a0,832 # 80005038 <_ZZ12printIntegermE6digits+0x38>
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	450080e7          	jalr	1104(ra) # 80002150 <_Z11printStringPKc>
    finishedD = true;
    80001d08:	00100793          	li	a5,1
    80001d0c:	00004717          	auipc	a4,0x4
    80001d10:	d4f70223          	sb	a5,-700(a4) # 80005a50 <_ZL9finishedD>
    thread_dispatch();
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5cc080e7          	jalr	1484(ra) # 800012e0 <_Z15thread_dispatchv>
}
    80001d1c:	01813083          	ld	ra,24(sp)
    80001d20:	01013403          	ld	s0,16(sp)
    80001d24:	00813483          	ld	s1,8(sp)
    80001d28:	00013903          	ld	s2,0(sp)
    80001d2c:	02010113          	addi	sp,sp,32
    80001d30:	00008067          	ret

0000000080001d34 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80001d34:	fe010113          	addi	sp,sp,-32
    80001d38:	00113c23          	sd	ra,24(sp)
    80001d3c:	00813823          	sd	s0,16(sp)
    80001d40:	00913423          	sd	s1,8(sp)
    80001d44:	01213023          	sd	s2,0(sp)
    80001d48:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001d4c:	00000493          	li	s1,0
    80001d50:	0400006f          	j	80001d90 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80001d54:	00003517          	auipc	a0,0x3
    80001d58:	2f450513          	addi	a0,a0,756 # 80005048 <_ZZ12printIntegermE6digits+0x48>
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	3f4080e7          	jalr	1012(ra) # 80002150 <_Z11printStringPKc>
    80001d64:	00000613          	li	a2,0
    80001d68:	00a00593          	li	a1,10
    80001d6c:	00048513          	mv	a0,s1
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	590080e7          	jalr	1424(ra) # 80002300 <_Z8printIntiii>
    80001d78:	00003517          	auipc	a0,0x3
    80001d7c:	4a050513          	addi	a0,a0,1184 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	3d0080e7          	jalr	976(ra) # 80002150 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001d88:	0014849b          	addiw	s1,s1,1
    80001d8c:	0ff4f493          	andi	s1,s1,255
    80001d90:	00200793          	li	a5,2
    80001d94:	fc97f0e3          	bgeu	a5,s1,80001d54 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80001d98:	00003517          	auipc	a0,0x3
    80001d9c:	2b850513          	addi	a0,a0,696 # 80005050 <_ZZ12printIntegermE6digits+0x50>
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	3b0080e7          	jalr	944(ra) # 80002150 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001da8:	00700313          	li	t1,7
    thread_dispatch();
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	534080e7          	jalr	1332(ra) # 800012e0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001db4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80001db8:	00003517          	auipc	a0,0x3
    80001dbc:	2a850513          	addi	a0,a0,680 # 80005060 <_ZZ12printIntegermE6digits+0x60>
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	390080e7          	jalr	912(ra) # 80002150 <_Z11printStringPKc>
    80001dc8:	00000613          	li	a2,0
    80001dcc:	00a00593          	li	a1,10
    80001dd0:	0009051b          	sext.w	a0,s2
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	52c080e7          	jalr	1324(ra) # 80002300 <_Z8printIntiii>
    80001ddc:	00003517          	auipc	a0,0x3
    80001de0:	43c50513          	addi	a0,a0,1084 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	36c080e7          	jalr	876(ra) # 80002150 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80001dec:	00c00513          	li	a0,12
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	d88080e7          	jalr	-632(ra) # 80001b78 <_ZL9fibonaccim>
    80001df8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80001dfc:	00003517          	auipc	a0,0x3
    80001e00:	26c50513          	addi	a0,a0,620 # 80005068 <_ZZ12printIntegermE6digits+0x68>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	34c080e7          	jalr	844(ra) # 80002150 <_Z11printStringPKc>
    80001e0c:	00000613          	li	a2,0
    80001e10:	00a00593          	li	a1,10
    80001e14:	0009051b          	sext.w	a0,s2
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	4e8080e7          	jalr	1256(ra) # 80002300 <_Z8printIntiii>
    80001e20:	00003517          	auipc	a0,0x3
    80001e24:	3f850513          	addi	a0,a0,1016 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	328080e7          	jalr	808(ra) # 80002150 <_Z11printStringPKc>
    80001e30:	0400006f          	j	80001e70 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80001e34:	00003517          	auipc	a0,0x3
    80001e38:	21450513          	addi	a0,a0,532 # 80005048 <_ZZ12printIntegermE6digits+0x48>
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	314080e7          	jalr	788(ra) # 80002150 <_Z11printStringPKc>
    80001e44:	00000613          	li	a2,0
    80001e48:	00a00593          	li	a1,10
    80001e4c:	00048513          	mv	a0,s1
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	4b0080e7          	jalr	1200(ra) # 80002300 <_Z8printIntiii>
    80001e58:	00003517          	auipc	a0,0x3
    80001e5c:	3c050513          	addi	a0,a0,960 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	2f0080e7          	jalr	752(ra) # 80002150 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001e68:	0014849b          	addiw	s1,s1,1
    80001e6c:	0ff4f493          	andi	s1,s1,255
    80001e70:	00500793          	li	a5,5
    80001e74:	fc97f0e3          	bgeu	a5,s1,80001e34 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80001e78:	00003517          	auipc	a0,0x3
    80001e7c:	20050513          	addi	a0,a0,512 # 80005078 <_ZZ12printIntegermE6digits+0x78>
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	2d0080e7          	jalr	720(ra) # 80002150 <_Z11printStringPKc>
    finishedC = true;
    80001e88:	00100793          	li	a5,1
    80001e8c:	00004717          	auipc	a4,0x4
    80001e90:	bcf702a3          	sb	a5,-1083(a4) # 80005a51 <_ZL9finishedC>
    thread_dispatch();
    80001e94:	fffff097          	auipc	ra,0xfffff
    80001e98:	44c080e7          	jalr	1100(ra) # 800012e0 <_Z15thread_dispatchv>
}
    80001e9c:	01813083          	ld	ra,24(sp)
    80001ea0:	01013403          	ld	s0,16(sp)
    80001ea4:	00813483          	ld	s1,8(sp)
    80001ea8:	00013903          	ld	s2,0(sp)
    80001eac:	02010113          	addi	sp,sp,32
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80001eb4:	fe010113          	addi	sp,sp,-32
    80001eb8:	00113c23          	sd	ra,24(sp)
    80001ebc:	00813823          	sd	s0,16(sp)
    80001ec0:	00913423          	sd	s1,8(sp)
    80001ec4:	01213023          	sd	s2,0(sp)
    80001ec8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001ecc:	00000913          	li	s2,0
    80001ed0:	0380006f          	j	80001f08 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	40c080e7          	jalr	1036(ra) # 800012e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001edc:	00148493          	addi	s1,s1,1
    80001ee0:	000027b7          	lui	a5,0x2
    80001ee4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001ee8:	0097ee63          	bltu	a5,s1,80001f04 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001eec:	00000713          	li	a4,0
    80001ef0:	000077b7          	lui	a5,0x7
    80001ef4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ef8:	fce7eee3          	bltu	a5,a4,80001ed4 <_ZL11workerBodyBPv+0x20>
    80001efc:	00170713          	addi	a4,a4,1
    80001f00:	ff1ff06f          	j	80001ef0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001f04:	00190913          	addi	s2,s2,1
    80001f08:	00f00793          	li	a5,15
    80001f0c:	0527e063          	bltu	a5,s2,80001f4c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80001f10:	00003517          	auipc	a0,0x3
    80001f14:	17850513          	addi	a0,a0,376 # 80005088 <_ZZ12printIntegermE6digits+0x88>
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	238080e7          	jalr	568(ra) # 80002150 <_Z11printStringPKc>
    80001f20:	00000613          	li	a2,0
    80001f24:	00a00593          	li	a1,10
    80001f28:	0009051b          	sext.w	a0,s2
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	3d4080e7          	jalr	980(ra) # 80002300 <_Z8printIntiii>
    80001f34:	00003517          	auipc	a0,0x3
    80001f38:	2e450513          	addi	a0,a0,740 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	214080e7          	jalr	532(ra) # 80002150 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001f44:	00000493          	li	s1,0
    80001f48:	f99ff06f          	j	80001ee0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80001f4c:	00003517          	auipc	a0,0x3
    80001f50:	14450513          	addi	a0,a0,324 # 80005090 <_ZZ12printIntegermE6digits+0x90>
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	1fc080e7          	jalr	508(ra) # 80002150 <_Z11printStringPKc>
    finishedB = true;
    80001f5c:	00100793          	li	a5,1
    80001f60:	00004717          	auipc	a4,0x4
    80001f64:	aef70923          	sb	a5,-1294(a4) # 80005a52 <_ZL9finishedB>
    thread_dispatch();
    80001f68:	fffff097          	auipc	ra,0xfffff
    80001f6c:	378080e7          	jalr	888(ra) # 800012e0 <_Z15thread_dispatchv>
}
    80001f70:	01813083          	ld	ra,24(sp)
    80001f74:	01013403          	ld	s0,16(sp)
    80001f78:	00813483          	ld	s1,8(sp)
    80001f7c:	00013903          	ld	s2,0(sp)
    80001f80:	02010113          	addi	sp,sp,32
    80001f84:	00008067          	ret

0000000080001f88 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80001f88:	fe010113          	addi	sp,sp,-32
    80001f8c:	00113c23          	sd	ra,24(sp)
    80001f90:	00813823          	sd	s0,16(sp)
    80001f94:	00913423          	sd	s1,8(sp)
    80001f98:	01213023          	sd	s2,0(sp)
    80001f9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001fa0:	00000913          	li	s2,0
    80001fa4:	0380006f          	j	80001fdc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	338080e7          	jalr	824(ra) # 800012e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001fb0:	00148493          	addi	s1,s1,1
    80001fb4:	000027b7          	lui	a5,0x2
    80001fb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001fbc:	0097ee63          	bltu	a5,s1,80001fd8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001fc0:	00000713          	li	a4,0
    80001fc4:	000077b7          	lui	a5,0x7
    80001fc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001fcc:	fce7eee3          	bltu	a5,a4,80001fa8 <_ZL11workerBodyAPv+0x20>
    80001fd0:	00170713          	addi	a4,a4,1
    80001fd4:	ff1ff06f          	j	80001fc4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001fd8:	00190913          	addi	s2,s2,1
    80001fdc:	00900793          	li	a5,9
    80001fe0:	0527e063          	bltu	a5,s2,80002020 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001fe4:	00003517          	auipc	a0,0x3
    80001fe8:	0bc50513          	addi	a0,a0,188 # 800050a0 <_ZZ12printIntegermE6digits+0xa0>
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	164080e7          	jalr	356(ra) # 80002150 <_Z11printStringPKc>
    80001ff4:	00000613          	li	a2,0
    80001ff8:	00a00593          	li	a1,10
    80001ffc:	0009051b          	sext.w	a0,s2
    80002000:	00000097          	auipc	ra,0x0
    80002004:	300080e7          	jalr	768(ra) # 80002300 <_Z8printIntiii>
    80002008:	00003517          	auipc	a0,0x3
    8000200c:	21050513          	addi	a0,a0,528 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    80002010:	00000097          	auipc	ra,0x0
    80002014:	140080e7          	jalr	320(ra) # 80002150 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002018:	00000493          	li	s1,0
    8000201c:	f99ff06f          	j	80001fb4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002020:	00003517          	auipc	a0,0x3
    80002024:	05850513          	addi	a0,a0,88 # 80005078 <_ZZ12printIntegermE6digits+0x78>
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	128080e7          	jalr	296(ra) # 80002150 <_Z11printStringPKc>
    finishedA = true;
    80002030:	00100793          	li	a5,1
    80002034:	00004717          	auipc	a4,0x4
    80002038:	a0f70fa3          	sb	a5,-1505(a4) # 80005a53 <_ZL9finishedA>
}
    8000203c:	01813083          	ld	ra,24(sp)
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	00813483          	ld	s1,8(sp)
    80002048:	00013903          	ld	s2,0(sp)
    8000204c:	02010113          	addi	sp,sp,32
    80002050:	00008067          	ret

0000000080002054 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002054:	fd010113          	addi	sp,sp,-48
    80002058:	02113423          	sd	ra,40(sp)
    8000205c:	02813023          	sd	s0,32(sp)
    80002060:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002064:	00000613          	li	a2,0
    80002068:	00000597          	auipc	a1,0x0
    8000206c:	f2058593          	addi	a1,a1,-224 # 80001f88 <_ZL11workerBodyAPv>
    80002070:	fd040513          	addi	a0,s0,-48
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	1ec080e7          	jalr	492(ra) # 80001260 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000207c:	00003517          	auipc	a0,0x3
    80002080:	02c50513          	addi	a0,a0,44 # 800050a8 <_ZZ12printIntegermE6digits+0xa8>
    80002084:	00000097          	auipc	ra,0x0
    80002088:	0cc080e7          	jalr	204(ra) # 80002150 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000208c:	00000613          	li	a2,0
    80002090:	00000597          	auipc	a1,0x0
    80002094:	e2458593          	addi	a1,a1,-476 # 80001eb4 <_ZL11workerBodyBPv>
    80002098:	fd840513          	addi	a0,s0,-40
    8000209c:	fffff097          	auipc	ra,0xfffff
    800020a0:	1c4080e7          	jalr	452(ra) # 80001260 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800020a4:	00003517          	auipc	a0,0x3
    800020a8:	01c50513          	addi	a0,a0,28 # 800050c0 <_ZZ12printIntegermE6digits+0xc0>
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	0a4080e7          	jalr	164(ra) # 80002150 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800020b4:	00000613          	li	a2,0
    800020b8:	00000597          	auipc	a1,0x0
    800020bc:	c7c58593          	addi	a1,a1,-900 # 80001d34 <_ZL11workerBodyCPv>
    800020c0:	fe040513          	addi	a0,s0,-32
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	19c080e7          	jalr	412(ra) # 80001260 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800020cc:	00003517          	auipc	a0,0x3
    800020d0:	00c50513          	addi	a0,a0,12 # 800050d8 <_ZZ12printIntegermE6digits+0xd8>
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	07c080e7          	jalr	124(ra) # 80002150 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800020dc:	00000613          	li	a2,0
    800020e0:	00000597          	auipc	a1,0x0
    800020e4:	b0c58593          	addi	a1,a1,-1268 # 80001bec <_ZL11workerBodyDPv>
    800020e8:	fe840513          	addi	a0,s0,-24
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	174080e7          	jalr	372(ra) # 80001260 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800020f4:	00003517          	auipc	a0,0x3
    800020f8:	ffc50513          	addi	a0,a0,-4 # 800050f0 <_ZZ12printIntegermE6digits+0xf0>
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	054080e7          	jalr	84(ra) # 80002150 <_Z11printStringPKc>
    80002104:	00c0006f          	j	80002110 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	1d8080e7          	jalr	472(ra) # 800012e0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002110:	00004797          	auipc	a5,0x4
    80002114:	9437c783          	lbu	a5,-1725(a5) # 80005a53 <_ZL9finishedA>
    80002118:	fe0788e3          	beqz	a5,80002108 <_Z18Threads_C_API_testv+0xb4>
    8000211c:	00004797          	auipc	a5,0x4
    80002120:	9367c783          	lbu	a5,-1738(a5) # 80005a52 <_ZL9finishedB>
    80002124:	fe0782e3          	beqz	a5,80002108 <_Z18Threads_C_API_testv+0xb4>
    80002128:	00004797          	auipc	a5,0x4
    8000212c:	9297c783          	lbu	a5,-1751(a5) # 80005a51 <_ZL9finishedC>
    80002130:	fc078ce3          	beqz	a5,80002108 <_Z18Threads_C_API_testv+0xb4>
    80002134:	00004797          	auipc	a5,0x4
    80002138:	91c7c783          	lbu	a5,-1764(a5) # 80005a50 <_ZL9finishedD>
    8000213c:	fc0786e3          	beqz	a5,80002108 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002140:	02813083          	ld	ra,40(sp)
    80002144:	02013403          	ld	s0,32(sp)
    80002148:	03010113          	addi	sp,sp,48
    8000214c:	00008067          	ret

0000000080002150 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002150:	fe010113          	addi	sp,sp,-32
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00813823          	sd	s0,16(sp)
    8000215c:	00913423          	sd	s1,8(sp)
    80002160:	02010413          	addi	s0,sp,32
    80002164:	00050493          	mv	s1,a0
    LOCK();
    80002168:	00100613          	li	a2,1
    8000216c:	00000593          	li	a1,0
    80002170:	00004517          	auipc	a0,0x4
    80002174:	8e850513          	addi	a0,a0,-1816 # 80005a58 <lockPrint>
    80002178:	fffff097          	auipc	ra,0xfffff
    8000217c:	0c8080e7          	jalr	200(ra) # 80001240 <copy_and_swap>
    80002180:	00050863          	beqz	a0,80002190 <_Z11printStringPKc+0x40>
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	15c080e7          	jalr	348(ra) # 800012e0 <_Z15thread_dispatchv>
    8000218c:	fddff06f          	j	80002168 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002190:	0004c503          	lbu	a0,0(s1)
    80002194:	00050a63          	beqz	a0,800021a8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	194080e7          	jalr	404(ra) # 8000132c <_Z4putcc>
        string++;
    800021a0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021a4:	fedff06f          	j	80002190 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800021a8:	00000613          	li	a2,0
    800021ac:	00100593          	li	a1,1
    800021b0:	00004517          	auipc	a0,0x4
    800021b4:	8a850513          	addi	a0,a0,-1880 # 80005a58 <lockPrint>
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	088080e7          	jalr	136(ra) # 80001240 <copy_and_swap>
    800021c0:	fe0514e3          	bnez	a0,800021a8 <_Z11printStringPKc+0x58>
}
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	02010113          	addi	sp,sp,32
    800021d4:	00008067          	ret

00000000800021d8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800021d8:	fd010113          	addi	sp,sp,-48
    800021dc:	02113423          	sd	ra,40(sp)
    800021e0:	02813023          	sd	s0,32(sp)
    800021e4:	00913c23          	sd	s1,24(sp)
    800021e8:	01213823          	sd	s2,16(sp)
    800021ec:	01313423          	sd	s3,8(sp)
    800021f0:	01413023          	sd	s4,0(sp)
    800021f4:	03010413          	addi	s0,sp,48
    800021f8:	00050993          	mv	s3,a0
    800021fc:	00058a13          	mv	s4,a1
    LOCK();
    80002200:	00100613          	li	a2,1
    80002204:	00000593          	li	a1,0
    80002208:	00004517          	auipc	a0,0x4
    8000220c:	85050513          	addi	a0,a0,-1968 # 80005a58 <lockPrint>
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	030080e7          	jalr	48(ra) # 80001240 <copy_and_swap>
    80002218:	00050863          	beqz	a0,80002228 <_Z9getStringPci+0x50>
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	0c4080e7          	jalr	196(ra) # 800012e0 <_Z15thread_dispatchv>
    80002224:	fddff06f          	j	80002200 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002228:	00000913          	li	s2,0
    8000222c:	00090493          	mv	s1,s2
    80002230:	0019091b          	addiw	s2,s2,1
    80002234:	03495a63          	bge	s2,s4,80002268 <_Z9getStringPci+0x90>
        cc = getc();
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	0cc080e7          	jalr	204(ra) # 80001304 <_Z4getcv>
        if(cc < 1)
    80002240:	02050463          	beqz	a0,80002268 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002244:	009984b3          	add	s1,s3,s1
    80002248:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000224c:	00a00793          	li	a5,10
    80002250:	00f50a63          	beq	a0,a5,80002264 <_Z9getStringPci+0x8c>
    80002254:	00d00793          	li	a5,13
    80002258:	fcf51ae3          	bne	a0,a5,8000222c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000225c:	00090493          	mv	s1,s2
    80002260:	0080006f          	j	80002268 <_Z9getStringPci+0x90>
    80002264:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002268:	009984b3          	add	s1,s3,s1
    8000226c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002270:	00000613          	li	a2,0
    80002274:	00100593          	li	a1,1
    80002278:	00003517          	auipc	a0,0x3
    8000227c:	7e050513          	addi	a0,a0,2016 # 80005a58 <lockPrint>
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	fc0080e7          	jalr	-64(ra) # 80001240 <copy_and_swap>
    80002288:	fe0514e3          	bnez	a0,80002270 <_Z9getStringPci+0x98>
    return buf;
}
    8000228c:	00098513          	mv	a0,s3
    80002290:	02813083          	ld	ra,40(sp)
    80002294:	02013403          	ld	s0,32(sp)
    80002298:	01813483          	ld	s1,24(sp)
    8000229c:	01013903          	ld	s2,16(sp)
    800022a0:	00813983          	ld	s3,8(sp)
    800022a4:	00013a03          	ld	s4,0(sp)
    800022a8:	03010113          	addi	sp,sp,48
    800022ac:	00008067          	ret

00000000800022b0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813423          	sd	s0,8(sp)
    800022b8:	01010413          	addi	s0,sp,16
    800022bc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800022c0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800022c4:	0006c603          	lbu	a2,0(a3)
    800022c8:	fd06071b          	addiw	a4,a2,-48
    800022cc:	0ff77713          	andi	a4,a4,255
    800022d0:	00900793          	li	a5,9
    800022d4:	02e7e063          	bltu	a5,a4,800022f4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800022d8:	0025179b          	slliw	a5,a0,0x2
    800022dc:	00a787bb          	addw	a5,a5,a0
    800022e0:	0017979b          	slliw	a5,a5,0x1
    800022e4:	00168693          	addi	a3,a3,1
    800022e8:	00c787bb          	addw	a5,a5,a2
    800022ec:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800022f0:	fd5ff06f          	j	800022c4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800022f4:	00813403          	ld	s0,8(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002300:	fc010113          	addi	sp,sp,-64
    80002304:	02113c23          	sd	ra,56(sp)
    80002308:	02813823          	sd	s0,48(sp)
    8000230c:	02913423          	sd	s1,40(sp)
    80002310:	03213023          	sd	s2,32(sp)
    80002314:	01313c23          	sd	s3,24(sp)
    80002318:	04010413          	addi	s0,sp,64
    8000231c:	00050493          	mv	s1,a0
    80002320:	00058913          	mv	s2,a1
    80002324:	00060993          	mv	s3,a2
    LOCK();
    80002328:	00100613          	li	a2,1
    8000232c:	00000593          	li	a1,0
    80002330:	00003517          	auipc	a0,0x3
    80002334:	72850513          	addi	a0,a0,1832 # 80005a58 <lockPrint>
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	f08080e7          	jalr	-248(ra) # 80001240 <copy_and_swap>
    80002340:	00050863          	beqz	a0,80002350 <_Z8printIntiii+0x50>
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	f9c080e7          	jalr	-100(ra) # 800012e0 <_Z15thread_dispatchv>
    8000234c:	fddff06f          	j	80002328 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002350:	00098463          	beqz	s3,80002358 <_Z8printIntiii+0x58>
    80002354:	0804c463          	bltz	s1,800023dc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002358:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000235c:	00000593          	li	a1,0
    }

    i = 0;
    80002360:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002364:	0009079b          	sext.w	a5,s2
    80002368:	0325773b          	remuw	a4,a0,s2
    8000236c:	00048613          	mv	a2,s1
    80002370:	0014849b          	addiw	s1,s1,1
    80002374:	02071693          	slli	a3,a4,0x20
    80002378:	0206d693          	srli	a3,a3,0x20
    8000237c:	00003717          	auipc	a4,0x3
    80002380:	63470713          	addi	a4,a4,1588 # 800059b0 <digits>
    80002384:	00d70733          	add	a4,a4,a3
    80002388:	00074683          	lbu	a3,0(a4)
    8000238c:	fd040713          	addi	a4,s0,-48
    80002390:	00c70733          	add	a4,a4,a2
    80002394:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002398:	0005071b          	sext.w	a4,a0
    8000239c:	0325553b          	divuw	a0,a0,s2
    800023a0:	fcf772e3          	bgeu	a4,a5,80002364 <_Z8printIntiii+0x64>
    if(neg)
    800023a4:	00058c63          	beqz	a1,800023bc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800023a8:	fd040793          	addi	a5,s0,-48
    800023ac:	009784b3          	add	s1,a5,s1
    800023b0:	02d00793          	li	a5,45
    800023b4:	fef48823          	sb	a5,-16(s1)
    800023b8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800023bc:	fff4849b          	addiw	s1,s1,-1
    800023c0:	0204c463          	bltz	s1,800023e8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800023c4:	fd040793          	addi	a5,s0,-48
    800023c8:	009787b3          	add	a5,a5,s1
    800023cc:	ff07c503          	lbu	a0,-16(a5)
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	f5c080e7          	jalr	-164(ra) # 8000132c <_Z4putcc>
    800023d8:	fe5ff06f          	j	800023bc <_Z8printIntiii+0xbc>
        x = -xx;
    800023dc:	4090053b          	negw	a0,s1
        neg = 1;
    800023e0:	00100593          	li	a1,1
        x = -xx;
    800023e4:	f7dff06f          	j	80002360 <_Z8printIntiii+0x60>

    UNLOCK();
    800023e8:	00000613          	li	a2,0
    800023ec:	00100593          	li	a1,1
    800023f0:	00003517          	auipc	a0,0x3
    800023f4:	66850513          	addi	a0,a0,1640 # 80005a58 <lockPrint>
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	e48080e7          	jalr	-440(ra) # 80001240 <copy_and_swap>
    80002400:	fe0514e3          	bnez	a0,800023e8 <_Z8printIntiii+0xe8>
    80002404:	03813083          	ld	ra,56(sp)
    80002408:	03013403          	ld	s0,48(sp)
    8000240c:	02813483          	ld	s1,40(sp)
    80002410:	02013903          	ld	s2,32(sp)
    80002414:	01813983          	ld	s3,24(sp)
    80002418:	04010113          	addi	sp,sp,64
    8000241c:	00008067          	ret

0000000080002420 <start>:
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	300027f3          	csrr	a5,mstatus
    80002430:	ffffe737          	lui	a4,0xffffe
    80002434:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b2f>
    80002438:	00e7f7b3          	and	a5,a5,a4
    8000243c:	00001737          	lui	a4,0x1
    80002440:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002444:	00e7e7b3          	or	a5,a5,a4
    80002448:	30079073          	csrw	mstatus,a5
    8000244c:	00000797          	auipc	a5,0x0
    80002450:	16078793          	addi	a5,a5,352 # 800025ac <system_main>
    80002454:	34179073          	csrw	mepc,a5
    80002458:	00000793          	li	a5,0
    8000245c:	18079073          	csrw	satp,a5
    80002460:	000107b7          	lui	a5,0x10
    80002464:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002468:	30279073          	csrw	medeleg,a5
    8000246c:	30379073          	csrw	mideleg,a5
    80002470:	104027f3          	csrr	a5,sie
    80002474:	2227e793          	ori	a5,a5,546
    80002478:	10479073          	csrw	sie,a5
    8000247c:	fff00793          	li	a5,-1
    80002480:	00a7d793          	srli	a5,a5,0xa
    80002484:	3b079073          	csrw	pmpaddr0,a5
    80002488:	00f00793          	li	a5,15
    8000248c:	3a079073          	csrw	pmpcfg0,a5
    80002490:	f14027f3          	csrr	a5,mhartid
    80002494:	0200c737          	lui	a4,0x200c
    80002498:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000249c:	0007869b          	sext.w	a3,a5
    800024a0:	00269713          	slli	a4,a3,0x2
    800024a4:	000f4637          	lui	a2,0xf4
    800024a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800024ac:	00d70733          	add	a4,a4,a3
    800024b0:	0037979b          	slliw	a5,a5,0x3
    800024b4:	020046b7          	lui	a3,0x2004
    800024b8:	00d787b3          	add	a5,a5,a3
    800024bc:	00c585b3          	add	a1,a1,a2
    800024c0:	00371693          	slli	a3,a4,0x3
    800024c4:	00003717          	auipc	a4,0x3
    800024c8:	59c70713          	addi	a4,a4,1436 # 80005a60 <timer_scratch>
    800024cc:	00b7b023          	sd	a1,0(a5)
    800024d0:	00d70733          	add	a4,a4,a3
    800024d4:	00f73c23          	sd	a5,24(a4)
    800024d8:	02c73023          	sd	a2,32(a4)
    800024dc:	34071073          	csrw	mscratch,a4
    800024e0:	00000797          	auipc	a5,0x0
    800024e4:	6e078793          	addi	a5,a5,1760 # 80002bc0 <timervec>
    800024e8:	30579073          	csrw	mtvec,a5
    800024ec:	300027f3          	csrr	a5,mstatus
    800024f0:	0087e793          	ori	a5,a5,8
    800024f4:	30079073          	csrw	mstatus,a5
    800024f8:	304027f3          	csrr	a5,mie
    800024fc:	0807e793          	ori	a5,a5,128
    80002500:	30479073          	csrw	mie,a5
    80002504:	f14027f3          	csrr	a5,mhartid
    80002508:	0007879b          	sext.w	a5,a5
    8000250c:	00078213          	mv	tp,a5
    80002510:	30200073          	mret
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <timerinit>:
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    8000252c:	f14027f3          	csrr	a5,mhartid
    80002530:	0200c737          	lui	a4,0x200c
    80002534:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002538:	0007869b          	sext.w	a3,a5
    8000253c:	00269713          	slli	a4,a3,0x2
    80002540:	000f4637          	lui	a2,0xf4
    80002544:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002548:	00d70733          	add	a4,a4,a3
    8000254c:	0037979b          	slliw	a5,a5,0x3
    80002550:	020046b7          	lui	a3,0x2004
    80002554:	00d787b3          	add	a5,a5,a3
    80002558:	00c585b3          	add	a1,a1,a2
    8000255c:	00371693          	slli	a3,a4,0x3
    80002560:	00003717          	auipc	a4,0x3
    80002564:	50070713          	addi	a4,a4,1280 # 80005a60 <timer_scratch>
    80002568:	00b7b023          	sd	a1,0(a5)
    8000256c:	00d70733          	add	a4,a4,a3
    80002570:	00f73c23          	sd	a5,24(a4)
    80002574:	02c73023          	sd	a2,32(a4)
    80002578:	34071073          	csrw	mscratch,a4
    8000257c:	00000797          	auipc	a5,0x0
    80002580:	64478793          	addi	a5,a5,1604 # 80002bc0 <timervec>
    80002584:	30579073          	csrw	mtvec,a5
    80002588:	300027f3          	csrr	a5,mstatus
    8000258c:	0087e793          	ori	a5,a5,8
    80002590:	30079073          	csrw	mstatus,a5
    80002594:	304027f3          	csrr	a5,mie
    80002598:	0807e793          	ori	a5,a5,128
    8000259c:	30479073          	csrw	mie,a5
    800025a0:	00813403          	ld	s0,8(sp)
    800025a4:	01010113          	addi	sp,sp,16
    800025a8:	00008067          	ret

00000000800025ac <system_main>:
    800025ac:	fe010113          	addi	sp,sp,-32
    800025b0:	00813823          	sd	s0,16(sp)
    800025b4:	00913423          	sd	s1,8(sp)
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	02010413          	addi	s0,sp,32
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	0c4080e7          	jalr	196(ra) # 80002684 <cpuid>
    800025c8:	00003497          	auipc	s1,0x3
    800025cc:	43848493          	addi	s1,s1,1080 # 80005a00 <started>
    800025d0:	02050263          	beqz	a0,800025f4 <system_main+0x48>
    800025d4:	0004a783          	lw	a5,0(s1)
    800025d8:	0007879b          	sext.w	a5,a5
    800025dc:	fe078ce3          	beqz	a5,800025d4 <system_main+0x28>
    800025e0:	0ff0000f          	fence
    800025e4:	00003517          	auipc	a0,0x3
    800025e8:	b5450513          	addi	a0,a0,-1196 # 80005138 <_ZZ12printIntegermE6digits+0x138>
    800025ec:	00001097          	auipc	ra,0x1
    800025f0:	a70080e7          	jalr	-1424(ra) # 8000305c <panic>
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	9c4080e7          	jalr	-1596(ra) # 80002fb8 <consoleinit>
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	150080e7          	jalr	336(ra) # 8000374c <printfinit>
    80002604:	00003517          	auipc	a0,0x3
    80002608:	c1450513          	addi	a0,a0,-1004 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	aac080e7          	jalr	-1364(ra) # 800030b8 <__printf>
    80002614:	00003517          	auipc	a0,0x3
    80002618:	af450513          	addi	a0,a0,-1292 # 80005108 <_ZZ12printIntegermE6digits+0x108>
    8000261c:	00001097          	auipc	ra,0x1
    80002620:	a9c080e7          	jalr	-1380(ra) # 800030b8 <__printf>
    80002624:	00003517          	auipc	a0,0x3
    80002628:	bf450513          	addi	a0,a0,-1036 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    8000262c:	00001097          	auipc	ra,0x1
    80002630:	a8c080e7          	jalr	-1396(ra) # 800030b8 <__printf>
    80002634:	00001097          	auipc	ra,0x1
    80002638:	4a4080e7          	jalr	1188(ra) # 80003ad8 <kinit>
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	148080e7          	jalr	328(ra) # 80002784 <trapinit>
    80002644:	00000097          	auipc	ra,0x0
    80002648:	16c080e7          	jalr	364(ra) # 800027b0 <trapinithart>
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	5b4080e7          	jalr	1460(ra) # 80002c00 <plicinit>
    80002654:	00000097          	auipc	ra,0x0
    80002658:	5d4080e7          	jalr	1492(ra) # 80002c28 <plicinithart>
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	078080e7          	jalr	120(ra) # 800026d4 <userinit>
    80002664:	0ff0000f          	fence
    80002668:	00100793          	li	a5,1
    8000266c:	00003517          	auipc	a0,0x3
    80002670:	ab450513          	addi	a0,a0,-1356 # 80005120 <_ZZ12printIntegermE6digits+0x120>
    80002674:	00f4a023          	sw	a5,0(s1)
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	a40080e7          	jalr	-1472(ra) # 800030b8 <__printf>
    80002680:	0000006f          	j	80002680 <system_main+0xd4>

0000000080002684 <cpuid>:
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813423          	sd	s0,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
    80002690:	00020513          	mv	a0,tp
    80002694:	00813403          	ld	s0,8(sp)
    80002698:	0005051b          	sext.w	a0,a0
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <mycpu>:
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00813423          	sd	s0,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    800026b0:	00020793          	mv	a5,tp
    800026b4:	00813403          	ld	s0,8(sp)
    800026b8:	0007879b          	sext.w	a5,a5
    800026bc:	00779793          	slli	a5,a5,0x7
    800026c0:	00004517          	auipc	a0,0x4
    800026c4:	3d050513          	addi	a0,a0,976 # 80006a90 <cpus>
    800026c8:	00f50533          	add	a0,a0,a5
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <userinit>:
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00813423          	sd	s0,8(sp)
    800026dc:	01010413          	addi	s0,sp,16
    800026e0:	00813403          	ld	s0,8(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	fffff317          	auipc	t1,0xfffff
    800026ec:	cc830067          	jr	-824(t1) # 800013b0 <main>

00000000800026f0 <either_copyout>:
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00813023          	sd	s0,0(sp)
    800026f8:	00113423          	sd	ra,8(sp)
    800026fc:	01010413          	addi	s0,sp,16
    80002700:	02051663          	bnez	a0,8000272c <either_copyout+0x3c>
    80002704:	00058513          	mv	a0,a1
    80002708:	00060593          	mv	a1,a2
    8000270c:	0006861b          	sext.w	a2,a3
    80002710:	00002097          	auipc	ra,0x2
    80002714:	c54080e7          	jalr	-940(ra) # 80004364 <__memmove>
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	00000513          	li	a0,0
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret
    8000272c:	00003517          	auipc	a0,0x3
    80002730:	a3450513          	addi	a0,a0,-1484 # 80005160 <_ZZ12printIntegermE6digits+0x160>
    80002734:	00001097          	auipc	ra,0x1
    80002738:	928080e7          	jalr	-1752(ra) # 8000305c <panic>

000000008000273c <either_copyin>:
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813023          	sd	s0,0(sp)
    80002744:	00113423          	sd	ra,8(sp)
    80002748:	01010413          	addi	s0,sp,16
    8000274c:	02059463          	bnez	a1,80002774 <either_copyin+0x38>
    80002750:	00060593          	mv	a1,a2
    80002754:	0006861b          	sext.w	a2,a3
    80002758:	00002097          	auipc	ra,0x2
    8000275c:	c0c080e7          	jalr	-1012(ra) # 80004364 <__memmove>
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	00000513          	li	a0,0
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret
    80002774:	00003517          	auipc	a0,0x3
    80002778:	a1450513          	addi	a0,a0,-1516 # 80005188 <_ZZ12printIntegermE6digits+0x188>
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	8e0080e7          	jalr	-1824(ra) # 8000305c <panic>

0000000080002784 <trapinit>:
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	00003597          	auipc	a1,0x3
    80002798:	a1c58593          	addi	a1,a1,-1508 # 800051b0 <_ZZ12printIntegermE6digits+0x1b0>
    8000279c:	00004517          	auipc	a0,0x4
    800027a0:	37450513          	addi	a0,a0,884 # 80006b10 <tickslock>
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00001317          	auipc	t1,0x1
    800027ac:	5c030067          	jr	1472(t1) # 80003d68 <initlock>

00000000800027b0 <trapinithart>:
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
    800027bc:	00000797          	auipc	a5,0x0
    800027c0:	2f478793          	addi	a5,a5,756 # 80002ab0 <kernelvec>
    800027c4:	10579073          	csrw	stvec,a5
    800027c8:	00813403          	ld	s0,8(sp)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret

00000000800027d4 <usertrap>:
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00813423          	sd	s0,8(sp)
    800027dc:	01010413          	addi	s0,sp,16
    800027e0:	00813403          	ld	s0,8(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <usertrapret>:
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    800027f8:	00813403          	ld	s0,8(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <kerneltrap>:
    80002804:	fe010113          	addi	sp,sp,-32
    80002808:	00813823          	sd	s0,16(sp)
    8000280c:	00113c23          	sd	ra,24(sp)
    80002810:	00913423          	sd	s1,8(sp)
    80002814:	02010413          	addi	s0,sp,32
    80002818:	142025f3          	csrr	a1,scause
    8000281c:	100027f3          	csrr	a5,sstatus
    80002820:	0027f793          	andi	a5,a5,2
    80002824:	10079c63          	bnez	a5,8000293c <kerneltrap+0x138>
    80002828:	142027f3          	csrr	a5,scause
    8000282c:	0207ce63          	bltz	a5,80002868 <kerneltrap+0x64>
    80002830:	00003517          	auipc	a0,0x3
    80002834:	9c850513          	addi	a0,a0,-1592 # 800051f8 <_ZZ12printIntegermE6digits+0x1f8>
    80002838:	00001097          	auipc	ra,0x1
    8000283c:	880080e7          	jalr	-1920(ra) # 800030b8 <__printf>
    80002840:	141025f3          	csrr	a1,sepc
    80002844:	14302673          	csrr	a2,stval
    80002848:	00003517          	auipc	a0,0x3
    8000284c:	9c050513          	addi	a0,a0,-1600 # 80005208 <_ZZ12printIntegermE6digits+0x208>
    80002850:	00001097          	auipc	ra,0x1
    80002854:	868080e7          	jalr	-1944(ra) # 800030b8 <__printf>
    80002858:	00003517          	auipc	a0,0x3
    8000285c:	9c850513          	addi	a0,a0,-1592 # 80005220 <_ZZ12printIntegermE6digits+0x220>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	7fc080e7          	jalr	2044(ra) # 8000305c <panic>
    80002868:	0ff7f713          	andi	a4,a5,255
    8000286c:	00900693          	li	a3,9
    80002870:	04d70063          	beq	a4,a3,800028b0 <kerneltrap+0xac>
    80002874:	fff00713          	li	a4,-1
    80002878:	03f71713          	slli	a4,a4,0x3f
    8000287c:	00170713          	addi	a4,a4,1
    80002880:	fae798e3          	bne	a5,a4,80002830 <kerneltrap+0x2c>
    80002884:	00000097          	auipc	ra,0x0
    80002888:	e00080e7          	jalr	-512(ra) # 80002684 <cpuid>
    8000288c:	06050663          	beqz	a0,800028f8 <kerneltrap+0xf4>
    80002890:	144027f3          	csrr	a5,sip
    80002894:	ffd7f793          	andi	a5,a5,-3
    80002898:	14479073          	csrw	sip,a5
    8000289c:	01813083          	ld	ra,24(sp)
    800028a0:	01013403          	ld	s0,16(sp)
    800028a4:	00813483          	ld	s1,8(sp)
    800028a8:	02010113          	addi	sp,sp,32
    800028ac:	00008067          	ret
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	3c4080e7          	jalr	964(ra) # 80002c74 <plic_claim>
    800028b8:	00a00793          	li	a5,10
    800028bc:	00050493          	mv	s1,a0
    800028c0:	06f50863          	beq	a0,a5,80002930 <kerneltrap+0x12c>
    800028c4:	fc050ce3          	beqz	a0,8000289c <kerneltrap+0x98>
    800028c8:	00050593          	mv	a1,a0
    800028cc:	00003517          	auipc	a0,0x3
    800028d0:	90c50513          	addi	a0,a0,-1780 # 800051d8 <_ZZ12printIntegermE6digits+0x1d8>
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	7e4080e7          	jalr	2020(ra) # 800030b8 <__printf>
    800028dc:	01013403          	ld	s0,16(sp)
    800028e0:	01813083          	ld	ra,24(sp)
    800028e4:	00048513          	mv	a0,s1
    800028e8:	00813483          	ld	s1,8(sp)
    800028ec:	02010113          	addi	sp,sp,32
    800028f0:	00000317          	auipc	t1,0x0
    800028f4:	3bc30067          	jr	956(t1) # 80002cac <plic_complete>
    800028f8:	00004517          	auipc	a0,0x4
    800028fc:	21850513          	addi	a0,a0,536 # 80006b10 <tickslock>
    80002900:	00001097          	auipc	ra,0x1
    80002904:	48c080e7          	jalr	1164(ra) # 80003d8c <acquire>
    80002908:	00003717          	auipc	a4,0x3
    8000290c:	0fc70713          	addi	a4,a4,252 # 80005a04 <ticks>
    80002910:	00072783          	lw	a5,0(a4)
    80002914:	00004517          	auipc	a0,0x4
    80002918:	1fc50513          	addi	a0,a0,508 # 80006b10 <tickslock>
    8000291c:	0017879b          	addiw	a5,a5,1
    80002920:	00f72023          	sw	a5,0(a4)
    80002924:	00001097          	auipc	ra,0x1
    80002928:	534080e7          	jalr	1332(ra) # 80003e58 <release>
    8000292c:	f65ff06f          	j	80002890 <kerneltrap+0x8c>
    80002930:	00001097          	auipc	ra,0x1
    80002934:	090080e7          	jalr	144(ra) # 800039c0 <uartintr>
    80002938:	fa5ff06f          	j	800028dc <kerneltrap+0xd8>
    8000293c:	00003517          	auipc	a0,0x3
    80002940:	87c50513          	addi	a0,a0,-1924 # 800051b8 <_ZZ12printIntegermE6digits+0x1b8>
    80002944:	00000097          	auipc	ra,0x0
    80002948:	718080e7          	jalr	1816(ra) # 8000305c <panic>

000000008000294c <clockintr>:
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00004497          	auipc	s1,0x4
    80002964:	1b048493          	addi	s1,s1,432 # 80006b10 <tickslock>
    80002968:	00048513          	mv	a0,s1
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	420080e7          	jalr	1056(ra) # 80003d8c <acquire>
    80002974:	00003717          	auipc	a4,0x3
    80002978:	09070713          	addi	a4,a4,144 # 80005a04 <ticks>
    8000297c:	00072783          	lw	a5,0(a4)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	01813083          	ld	ra,24(sp)
    80002988:	00048513          	mv	a0,s1
    8000298c:	0017879b          	addiw	a5,a5,1
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	00f72023          	sw	a5,0(a4)
    80002998:	02010113          	addi	sp,sp,32
    8000299c:	00001317          	auipc	t1,0x1
    800029a0:	4bc30067          	jr	1212(t1) # 80003e58 <release>

00000000800029a4 <devintr>:
    800029a4:	142027f3          	csrr	a5,scause
    800029a8:	00000513          	li	a0,0
    800029ac:	0007c463          	bltz	a5,800029b4 <devintr+0x10>
    800029b0:	00008067          	ret
    800029b4:	fe010113          	addi	sp,sp,-32
    800029b8:	00813823          	sd	s0,16(sp)
    800029bc:	00113c23          	sd	ra,24(sp)
    800029c0:	00913423          	sd	s1,8(sp)
    800029c4:	02010413          	addi	s0,sp,32
    800029c8:	0ff7f713          	andi	a4,a5,255
    800029cc:	00900693          	li	a3,9
    800029d0:	04d70c63          	beq	a4,a3,80002a28 <devintr+0x84>
    800029d4:	fff00713          	li	a4,-1
    800029d8:	03f71713          	slli	a4,a4,0x3f
    800029dc:	00170713          	addi	a4,a4,1
    800029e0:	00e78c63          	beq	a5,a4,800029f8 <devintr+0x54>
    800029e4:	01813083          	ld	ra,24(sp)
    800029e8:	01013403          	ld	s0,16(sp)
    800029ec:	00813483          	ld	s1,8(sp)
    800029f0:	02010113          	addi	sp,sp,32
    800029f4:	00008067          	ret
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	c8c080e7          	jalr	-884(ra) # 80002684 <cpuid>
    80002a00:	06050663          	beqz	a0,80002a6c <devintr+0xc8>
    80002a04:	144027f3          	csrr	a5,sip
    80002a08:	ffd7f793          	andi	a5,a5,-3
    80002a0c:	14479073          	csrw	sip,a5
    80002a10:	01813083          	ld	ra,24(sp)
    80002a14:	01013403          	ld	s0,16(sp)
    80002a18:	00813483          	ld	s1,8(sp)
    80002a1c:	00200513          	li	a0,2
    80002a20:	02010113          	addi	sp,sp,32
    80002a24:	00008067          	ret
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	24c080e7          	jalr	588(ra) # 80002c74 <plic_claim>
    80002a30:	00a00793          	li	a5,10
    80002a34:	00050493          	mv	s1,a0
    80002a38:	06f50663          	beq	a0,a5,80002aa4 <devintr+0x100>
    80002a3c:	00100513          	li	a0,1
    80002a40:	fa0482e3          	beqz	s1,800029e4 <devintr+0x40>
    80002a44:	00048593          	mv	a1,s1
    80002a48:	00002517          	auipc	a0,0x2
    80002a4c:	79050513          	addi	a0,a0,1936 # 800051d8 <_ZZ12printIntegermE6digits+0x1d8>
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	668080e7          	jalr	1640(ra) # 800030b8 <__printf>
    80002a58:	00048513          	mv	a0,s1
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	250080e7          	jalr	592(ra) # 80002cac <plic_complete>
    80002a64:	00100513          	li	a0,1
    80002a68:	f7dff06f          	j	800029e4 <devintr+0x40>
    80002a6c:	00004517          	auipc	a0,0x4
    80002a70:	0a450513          	addi	a0,a0,164 # 80006b10 <tickslock>
    80002a74:	00001097          	auipc	ra,0x1
    80002a78:	318080e7          	jalr	792(ra) # 80003d8c <acquire>
    80002a7c:	00003717          	auipc	a4,0x3
    80002a80:	f8870713          	addi	a4,a4,-120 # 80005a04 <ticks>
    80002a84:	00072783          	lw	a5,0(a4)
    80002a88:	00004517          	auipc	a0,0x4
    80002a8c:	08850513          	addi	a0,a0,136 # 80006b10 <tickslock>
    80002a90:	0017879b          	addiw	a5,a5,1
    80002a94:	00f72023          	sw	a5,0(a4)
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	3c0080e7          	jalr	960(ra) # 80003e58 <release>
    80002aa0:	f65ff06f          	j	80002a04 <devintr+0x60>
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	f1c080e7          	jalr	-228(ra) # 800039c0 <uartintr>
    80002aac:	fadff06f          	j	80002a58 <devintr+0xb4>

0000000080002ab0 <kernelvec>:
    80002ab0:	f0010113          	addi	sp,sp,-256
    80002ab4:	00113023          	sd	ra,0(sp)
    80002ab8:	00213423          	sd	sp,8(sp)
    80002abc:	00313823          	sd	gp,16(sp)
    80002ac0:	00413c23          	sd	tp,24(sp)
    80002ac4:	02513023          	sd	t0,32(sp)
    80002ac8:	02613423          	sd	t1,40(sp)
    80002acc:	02713823          	sd	t2,48(sp)
    80002ad0:	02813c23          	sd	s0,56(sp)
    80002ad4:	04913023          	sd	s1,64(sp)
    80002ad8:	04a13423          	sd	a0,72(sp)
    80002adc:	04b13823          	sd	a1,80(sp)
    80002ae0:	04c13c23          	sd	a2,88(sp)
    80002ae4:	06d13023          	sd	a3,96(sp)
    80002ae8:	06e13423          	sd	a4,104(sp)
    80002aec:	06f13823          	sd	a5,112(sp)
    80002af0:	07013c23          	sd	a6,120(sp)
    80002af4:	09113023          	sd	a7,128(sp)
    80002af8:	09213423          	sd	s2,136(sp)
    80002afc:	09313823          	sd	s3,144(sp)
    80002b00:	09413c23          	sd	s4,152(sp)
    80002b04:	0b513023          	sd	s5,160(sp)
    80002b08:	0b613423          	sd	s6,168(sp)
    80002b0c:	0b713823          	sd	s7,176(sp)
    80002b10:	0b813c23          	sd	s8,184(sp)
    80002b14:	0d913023          	sd	s9,192(sp)
    80002b18:	0da13423          	sd	s10,200(sp)
    80002b1c:	0db13823          	sd	s11,208(sp)
    80002b20:	0dc13c23          	sd	t3,216(sp)
    80002b24:	0fd13023          	sd	t4,224(sp)
    80002b28:	0fe13423          	sd	t5,232(sp)
    80002b2c:	0ff13823          	sd	t6,240(sp)
    80002b30:	cd5ff0ef          	jal	ra,80002804 <kerneltrap>
    80002b34:	00013083          	ld	ra,0(sp)
    80002b38:	00813103          	ld	sp,8(sp)
    80002b3c:	01013183          	ld	gp,16(sp)
    80002b40:	02013283          	ld	t0,32(sp)
    80002b44:	02813303          	ld	t1,40(sp)
    80002b48:	03013383          	ld	t2,48(sp)
    80002b4c:	03813403          	ld	s0,56(sp)
    80002b50:	04013483          	ld	s1,64(sp)
    80002b54:	04813503          	ld	a0,72(sp)
    80002b58:	05013583          	ld	a1,80(sp)
    80002b5c:	05813603          	ld	a2,88(sp)
    80002b60:	06013683          	ld	a3,96(sp)
    80002b64:	06813703          	ld	a4,104(sp)
    80002b68:	07013783          	ld	a5,112(sp)
    80002b6c:	07813803          	ld	a6,120(sp)
    80002b70:	08013883          	ld	a7,128(sp)
    80002b74:	08813903          	ld	s2,136(sp)
    80002b78:	09013983          	ld	s3,144(sp)
    80002b7c:	09813a03          	ld	s4,152(sp)
    80002b80:	0a013a83          	ld	s5,160(sp)
    80002b84:	0a813b03          	ld	s6,168(sp)
    80002b88:	0b013b83          	ld	s7,176(sp)
    80002b8c:	0b813c03          	ld	s8,184(sp)
    80002b90:	0c013c83          	ld	s9,192(sp)
    80002b94:	0c813d03          	ld	s10,200(sp)
    80002b98:	0d013d83          	ld	s11,208(sp)
    80002b9c:	0d813e03          	ld	t3,216(sp)
    80002ba0:	0e013e83          	ld	t4,224(sp)
    80002ba4:	0e813f03          	ld	t5,232(sp)
    80002ba8:	0f013f83          	ld	t6,240(sp)
    80002bac:	10010113          	addi	sp,sp,256
    80002bb0:	10200073          	sret
    80002bb4:	00000013          	nop
    80002bb8:	00000013          	nop
    80002bbc:	00000013          	nop

0000000080002bc0 <timervec>:
    80002bc0:	34051573          	csrrw	a0,mscratch,a0
    80002bc4:	00b53023          	sd	a1,0(a0)
    80002bc8:	00c53423          	sd	a2,8(a0)
    80002bcc:	00d53823          	sd	a3,16(a0)
    80002bd0:	01853583          	ld	a1,24(a0)
    80002bd4:	02053603          	ld	a2,32(a0)
    80002bd8:	0005b683          	ld	a3,0(a1)
    80002bdc:	00c686b3          	add	a3,a3,a2
    80002be0:	00d5b023          	sd	a3,0(a1)
    80002be4:	00200593          	li	a1,2
    80002be8:	14459073          	csrw	sip,a1
    80002bec:	01053683          	ld	a3,16(a0)
    80002bf0:	00853603          	ld	a2,8(a0)
    80002bf4:	00053583          	ld	a1,0(a0)
    80002bf8:	34051573          	csrrw	a0,mscratch,a0
    80002bfc:	30200073          	mret

0000000080002c00 <plicinit>:
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00813423          	sd	s0,8(sp)
    80002c08:	01010413          	addi	s0,sp,16
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	0c0007b7          	lui	a5,0xc000
    80002c14:	00100713          	li	a4,1
    80002c18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002c1c:	00e7a223          	sw	a4,4(a5)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <plicinithart>:
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00813023          	sd	s0,0(sp)
    80002c30:	00113423          	sd	ra,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	a4c080e7          	jalr	-1460(ra) # 80002684 <cpuid>
    80002c40:	0085171b          	slliw	a4,a0,0x8
    80002c44:	0c0027b7          	lui	a5,0xc002
    80002c48:	00e787b3          	add	a5,a5,a4
    80002c4c:	40200713          	li	a4,1026
    80002c50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002c54:	00813083          	ld	ra,8(sp)
    80002c58:	00013403          	ld	s0,0(sp)
    80002c5c:	00d5151b          	slliw	a0,a0,0xd
    80002c60:	0c2017b7          	lui	a5,0xc201
    80002c64:	00a78533          	add	a0,a5,a0
    80002c68:	00052023          	sw	zero,0(a0)
    80002c6c:	01010113          	addi	sp,sp,16
    80002c70:	00008067          	ret

0000000080002c74 <plic_claim>:
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00813023          	sd	s0,0(sp)
    80002c7c:	00113423          	sd	ra,8(sp)
    80002c80:	01010413          	addi	s0,sp,16
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	a00080e7          	jalr	-1536(ra) # 80002684 <cpuid>
    80002c8c:	00813083          	ld	ra,8(sp)
    80002c90:	00013403          	ld	s0,0(sp)
    80002c94:	00d5151b          	slliw	a0,a0,0xd
    80002c98:	0c2017b7          	lui	a5,0xc201
    80002c9c:	00a78533          	add	a0,a5,a0
    80002ca0:	00452503          	lw	a0,4(a0)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <plic_complete>:
    80002cac:	fe010113          	addi	sp,sp,-32
    80002cb0:	00813823          	sd	s0,16(sp)
    80002cb4:	00913423          	sd	s1,8(sp)
    80002cb8:	00113c23          	sd	ra,24(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    80002cc0:	00050493          	mv	s1,a0
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	9c0080e7          	jalr	-1600(ra) # 80002684 <cpuid>
    80002ccc:	01813083          	ld	ra,24(sp)
    80002cd0:	01013403          	ld	s0,16(sp)
    80002cd4:	00d5179b          	slliw	a5,a0,0xd
    80002cd8:	0c201737          	lui	a4,0xc201
    80002cdc:	00f707b3          	add	a5,a4,a5
    80002ce0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <consolewrite>:
    80002cf0:	fb010113          	addi	sp,sp,-80
    80002cf4:	04813023          	sd	s0,64(sp)
    80002cf8:	04113423          	sd	ra,72(sp)
    80002cfc:	02913c23          	sd	s1,56(sp)
    80002d00:	03213823          	sd	s2,48(sp)
    80002d04:	03313423          	sd	s3,40(sp)
    80002d08:	03413023          	sd	s4,32(sp)
    80002d0c:	01513c23          	sd	s5,24(sp)
    80002d10:	05010413          	addi	s0,sp,80
    80002d14:	06c05c63          	blez	a2,80002d8c <consolewrite+0x9c>
    80002d18:	00060993          	mv	s3,a2
    80002d1c:	00050a13          	mv	s4,a0
    80002d20:	00058493          	mv	s1,a1
    80002d24:	00000913          	li	s2,0
    80002d28:	fff00a93          	li	s5,-1
    80002d2c:	01c0006f          	j	80002d48 <consolewrite+0x58>
    80002d30:	fbf44503          	lbu	a0,-65(s0)
    80002d34:	0019091b          	addiw	s2,s2,1
    80002d38:	00148493          	addi	s1,s1,1
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	a9c080e7          	jalr	-1380(ra) # 800037d8 <uartputc>
    80002d44:	03298063          	beq	s3,s2,80002d64 <consolewrite+0x74>
    80002d48:	00048613          	mv	a2,s1
    80002d4c:	00100693          	li	a3,1
    80002d50:	000a0593          	mv	a1,s4
    80002d54:	fbf40513          	addi	a0,s0,-65
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	9e4080e7          	jalr	-1564(ra) # 8000273c <either_copyin>
    80002d60:	fd5518e3          	bne	a0,s5,80002d30 <consolewrite+0x40>
    80002d64:	04813083          	ld	ra,72(sp)
    80002d68:	04013403          	ld	s0,64(sp)
    80002d6c:	03813483          	ld	s1,56(sp)
    80002d70:	02813983          	ld	s3,40(sp)
    80002d74:	02013a03          	ld	s4,32(sp)
    80002d78:	01813a83          	ld	s5,24(sp)
    80002d7c:	00090513          	mv	a0,s2
    80002d80:	03013903          	ld	s2,48(sp)
    80002d84:	05010113          	addi	sp,sp,80
    80002d88:	00008067          	ret
    80002d8c:	00000913          	li	s2,0
    80002d90:	fd5ff06f          	j	80002d64 <consolewrite+0x74>

0000000080002d94 <consoleread>:
    80002d94:	f9010113          	addi	sp,sp,-112
    80002d98:	06813023          	sd	s0,96(sp)
    80002d9c:	04913c23          	sd	s1,88(sp)
    80002da0:	05213823          	sd	s2,80(sp)
    80002da4:	05313423          	sd	s3,72(sp)
    80002da8:	05413023          	sd	s4,64(sp)
    80002dac:	03513c23          	sd	s5,56(sp)
    80002db0:	03613823          	sd	s6,48(sp)
    80002db4:	03713423          	sd	s7,40(sp)
    80002db8:	03813023          	sd	s8,32(sp)
    80002dbc:	06113423          	sd	ra,104(sp)
    80002dc0:	01913c23          	sd	s9,24(sp)
    80002dc4:	07010413          	addi	s0,sp,112
    80002dc8:	00060b93          	mv	s7,a2
    80002dcc:	00050913          	mv	s2,a0
    80002dd0:	00058c13          	mv	s8,a1
    80002dd4:	00060b1b          	sext.w	s6,a2
    80002dd8:	00004497          	auipc	s1,0x4
    80002ddc:	d6048493          	addi	s1,s1,-672 # 80006b38 <cons>
    80002de0:	00400993          	li	s3,4
    80002de4:	fff00a13          	li	s4,-1
    80002de8:	00a00a93          	li	s5,10
    80002dec:	05705e63          	blez	s7,80002e48 <consoleread+0xb4>
    80002df0:	09c4a703          	lw	a4,156(s1)
    80002df4:	0984a783          	lw	a5,152(s1)
    80002df8:	0007071b          	sext.w	a4,a4
    80002dfc:	08e78463          	beq	a5,a4,80002e84 <consoleread+0xf0>
    80002e00:	07f7f713          	andi	a4,a5,127
    80002e04:	00e48733          	add	a4,s1,a4
    80002e08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002e0c:	0017869b          	addiw	a3,a5,1
    80002e10:	08d4ac23          	sw	a3,152(s1)
    80002e14:	00070c9b          	sext.w	s9,a4
    80002e18:	0b370663          	beq	a4,s3,80002ec4 <consoleread+0x130>
    80002e1c:	00100693          	li	a3,1
    80002e20:	f9f40613          	addi	a2,s0,-97
    80002e24:	000c0593          	mv	a1,s8
    80002e28:	00090513          	mv	a0,s2
    80002e2c:	f8e40fa3          	sb	a4,-97(s0)
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	8c0080e7          	jalr	-1856(ra) # 800026f0 <either_copyout>
    80002e38:	01450863          	beq	a0,s4,80002e48 <consoleread+0xb4>
    80002e3c:	001c0c13          	addi	s8,s8,1
    80002e40:	fffb8b9b          	addiw	s7,s7,-1
    80002e44:	fb5c94e3          	bne	s9,s5,80002dec <consoleread+0x58>
    80002e48:	000b851b          	sext.w	a0,s7
    80002e4c:	06813083          	ld	ra,104(sp)
    80002e50:	06013403          	ld	s0,96(sp)
    80002e54:	05813483          	ld	s1,88(sp)
    80002e58:	05013903          	ld	s2,80(sp)
    80002e5c:	04813983          	ld	s3,72(sp)
    80002e60:	04013a03          	ld	s4,64(sp)
    80002e64:	03813a83          	ld	s5,56(sp)
    80002e68:	02813b83          	ld	s7,40(sp)
    80002e6c:	02013c03          	ld	s8,32(sp)
    80002e70:	01813c83          	ld	s9,24(sp)
    80002e74:	40ab053b          	subw	a0,s6,a0
    80002e78:	03013b03          	ld	s6,48(sp)
    80002e7c:	07010113          	addi	sp,sp,112
    80002e80:	00008067          	ret
    80002e84:	00001097          	auipc	ra,0x1
    80002e88:	1d8080e7          	jalr	472(ra) # 8000405c <push_on>
    80002e8c:	0984a703          	lw	a4,152(s1)
    80002e90:	09c4a783          	lw	a5,156(s1)
    80002e94:	0007879b          	sext.w	a5,a5
    80002e98:	fef70ce3          	beq	a4,a5,80002e90 <consoleread+0xfc>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	234080e7          	jalr	564(ra) # 800040d0 <pop_on>
    80002ea4:	0984a783          	lw	a5,152(s1)
    80002ea8:	07f7f713          	andi	a4,a5,127
    80002eac:	00e48733          	add	a4,s1,a4
    80002eb0:	01874703          	lbu	a4,24(a4)
    80002eb4:	0017869b          	addiw	a3,a5,1
    80002eb8:	08d4ac23          	sw	a3,152(s1)
    80002ebc:	00070c9b          	sext.w	s9,a4
    80002ec0:	f5371ee3          	bne	a4,s3,80002e1c <consoleread+0x88>
    80002ec4:	000b851b          	sext.w	a0,s7
    80002ec8:	f96bf2e3          	bgeu	s7,s6,80002e4c <consoleread+0xb8>
    80002ecc:	08f4ac23          	sw	a5,152(s1)
    80002ed0:	f7dff06f          	j	80002e4c <consoleread+0xb8>

0000000080002ed4 <consputc>:
    80002ed4:	10000793          	li	a5,256
    80002ed8:	00f50663          	beq	a0,a5,80002ee4 <consputc+0x10>
    80002edc:	00001317          	auipc	t1,0x1
    80002ee0:	9f430067          	jr	-1548(t1) # 800038d0 <uartputc_sync>
    80002ee4:	ff010113          	addi	sp,sp,-16
    80002ee8:	00113423          	sd	ra,8(sp)
    80002eec:	00813023          	sd	s0,0(sp)
    80002ef0:	01010413          	addi	s0,sp,16
    80002ef4:	00800513          	li	a0,8
    80002ef8:	00001097          	auipc	ra,0x1
    80002efc:	9d8080e7          	jalr	-1576(ra) # 800038d0 <uartputc_sync>
    80002f00:	02000513          	li	a0,32
    80002f04:	00001097          	auipc	ra,0x1
    80002f08:	9cc080e7          	jalr	-1588(ra) # 800038d0 <uartputc_sync>
    80002f0c:	00013403          	ld	s0,0(sp)
    80002f10:	00813083          	ld	ra,8(sp)
    80002f14:	00800513          	li	a0,8
    80002f18:	01010113          	addi	sp,sp,16
    80002f1c:	00001317          	auipc	t1,0x1
    80002f20:	9b430067          	jr	-1612(t1) # 800038d0 <uartputc_sync>

0000000080002f24 <consoleintr>:
    80002f24:	fe010113          	addi	sp,sp,-32
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00913423          	sd	s1,8(sp)
    80002f30:	01213023          	sd	s2,0(sp)
    80002f34:	00113c23          	sd	ra,24(sp)
    80002f38:	02010413          	addi	s0,sp,32
    80002f3c:	00004917          	auipc	s2,0x4
    80002f40:	bfc90913          	addi	s2,s2,-1028 # 80006b38 <cons>
    80002f44:	00050493          	mv	s1,a0
    80002f48:	00090513          	mv	a0,s2
    80002f4c:	00001097          	auipc	ra,0x1
    80002f50:	e40080e7          	jalr	-448(ra) # 80003d8c <acquire>
    80002f54:	02048c63          	beqz	s1,80002f8c <consoleintr+0x68>
    80002f58:	0a092783          	lw	a5,160(s2)
    80002f5c:	09892703          	lw	a4,152(s2)
    80002f60:	07f00693          	li	a3,127
    80002f64:	40e7873b          	subw	a4,a5,a4
    80002f68:	02e6e263          	bltu	a3,a4,80002f8c <consoleintr+0x68>
    80002f6c:	00d00713          	li	a4,13
    80002f70:	04e48063          	beq	s1,a4,80002fb0 <consoleintr+0x8c>
    80002f74:	07f7f713          	andi	a4,a5,127
    80002f78:	00e90733          	add	a4,s2,a4
    80002f7c:	0017879b          	addiw	a5,a5,1
    80002f80:	0af92023          	sw	a5,160(s2)
    80002f84:	00970c23          	sb	s1,24(a4)
    80002f88:	08f92e23          	sw	a5,156(s2)
    80002f8c:	01013403          	ld	s0,16(sp)
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	00013903          	ld	s2,0(sp)
    80002f9c:	00004517          	auipc	a0,0x4
    80002fa0:	b9c50513          	addi	a0,a0,-1124 # 80006b38 <cons>
    80002fa4:	02010113          	addi	sp,sp,32
    80002fa8:	00001317          	auipc	t1,0x1
    80002fac:	eb030067          	jr	-336(t1) # 80003e58 <release>
    80002fb0:	00a00493          	li	s1,10
    80002fb4:	fc1ff06f          	j	80002f74 <consoleintr+0x50>

0000000080002fb8 <consoleinit>:
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	02010413          	addi	s0,sp,32
    80002fcc:	00004497          	auipc	s1,0x4
    80002fd0:	b6c48493          	addi	s1,s1,-1172 # 80006b38 <cons>
    80002fd4:	00048513          	mv	a0,s1
    80002fd8:	00002597          	auipc	a1,0x2
    80002fdc:	25858593          	addi	a1,a1,600 # 80005230 <_ZZ12printIntegermE6digits+0x230>
    80002fe0:	00001097          	auipc	ra,0x1
    80002fe4:	d88080e7          	jalr	-632(ra) # 80003d68 <initlock>
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	7ac080e7          	jalr	1964(ra) # 80003794 <uartinit>
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00000797          	auipc	a5,0x0
    80002ffc:	d9c78793          	addi	a5,a5,-612 # 80002d94 <consoleread>
    80003000:	0af4bc23          	sd	a5,184(s1)
    80003004:	00000797          	auipc	a5,0x0
    80003008:	cec78793          	addi	a5,a5,-788 # 80002cf0 <consolewrite>
    8000300c:	0cf4b023          	sd	a5,192(s1)
    80003010:	00813483          	ld	s1,8(sp)
    80003014:	02010113          	addi	sp,sp,32
    80003018:	00008067          	ret

000000008000301c <console_read>:
    8000301c:	ff010113          	addi	sp,sp,-16
    80003020:	00813423          	sd	s0,8(sp)
    80003024:	01010413          	addi	s0,sp,16
    80003028:	00813403          	ld	s0,8(sp)
    8000302c:	00004317          	auipc	t1,0x4
    80003030:	bc433303          	ld	t1,-1084(t1) # 80006bf0 <devsw+0x10>
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00030067          	jr	t1

000000008000303c <console_write>:
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00813423          	sd	s0,8(sp)
    80003044:	01010413          	addi	s0,sp,16
    80003048:	00813403          	ld	s0,8(sp)
    8000304c:	00004317          	auipc	t1,0x4
    80003050:	bac33303          	ld	t1,-1108(t1) # 80006bf8 <devsw+0x18>
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00030067          	jr	t1

000000008000305c <panic>:
    8000305c:	fe010113          	addi	sp,sp,-32
    80003060:	00113c23          	sd	ra,24(sp)
    80003064:	00813823          	sd	s0,16(sp)
    80003068:	00913423          	sd	s1,8(sp)
    8000306c:	02010413          	addi	s0,sp,32
    80003070:	00050493          	mv	s1,a0
    80003074:	00002517          	auipc	a0,0x2
    80003078:	1c450513          	addi	a0,a0,452 # 80005238 <_ZZ12printIntegermE6digits+0x238>
    8000307c:	00004797          	auipc	a5,0x4
    80003080:	c007ae23          	sw	zero,-996(a5) # 80006c98 <pr+0x18>
    80003084:	00000097          	auipc	ra,0x0
    80003088:	034080e7          	jalr	52(ra) # 800030b8 <__printf>
    8000308c:	00048513          	mv	a0,s1
    80003090:	00000097          	auipc	ra,0x0
    80003094:	028080e7          	jalr	40(ra) # 800030b8 <__printf>
    80003098:	00002517          	auipc	a0,0x2
    8000309c:	18050513          	addi	a0,a0,384 # 80005218 <_ZZ12printIntegermE6digits+0x218>
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	018080e7          	jalr	24(ra) # 800030b8 <__printf>
    800030a8:	00100793          	li	a5,1
    800030ac:	00003717          	auipc	a4,0x3
    800030b0:	94f72e23          	sw	a5,-1700(a4) # 80005a08 <panicked>
    800030b4:	0000006f          	j	800030b4 <panic+0x58>

00000000800030b8 <__printf>:
    800030b8:	f3010113          	addi	sp,sp,-208
    800030bc:	08813023          	sd	s0,128(sp)
    800030c0:	07313423          	sd	s3,104(sp)
    800030c4:	09010413          	addi	s0,sp,144
    800030c8:	05813023          	sd	s8,64(sp)
    800030cc:	08113423          	sd	ra,136(sp)
    800030d0:	06913c23          	sd	s1,120(sp)
    800030d4:	07213823          	sd	s2,112(sp)
    800030d8:	07413023          	sd	s4,96(sp)
    800030dc:	05513c23          	sd	s5,88(sp)
    800030e0:	05613823          	sd	s6,80(sp)
    800030e4:	05713423          	sd	s7,72(sp)
    800030e8:	03913c23          	sd	s9,56(sp)
    800030ec:	03a13823          	sd	s10,48(sp)
    800030f0:	03b13423          	sd	s11,40(sp)
    800030f4:	00004317          	auipc	t1,0x4
    800030f8:	b8c30313          	addi	t1,t1,-1140 # 80006c80 <pr>
    800030fc:	01832c03          	lw	s8,24(t1)
    80003100:	00b43423          	sd	a1,8(s0)
    80003104:	00c43823          	sd	a2,16(s0)
    80003108:	00d43c23          	sd	a3,24(s0)
    8000310c:	02e43023          	sd	a4,32(s0)
    80003110:	02f43423          	sd	a5,40(s0)
    80003114:	03043823          	sd	a6,48(s0)
    80003118:	03143c23          	sd	a7,56(s0)
    8000311c:	00050993          	mv	s3,a0
    80003120:	4a0c1663          	bnez	s8,800035cc <__printf+0x514>
    80003124:	60098c63          	beqz	s3,8000373c <__printf+0x684>
    80003128:	0009c503          	lbu	a0,0(s3)
    8000312c:	00840793          	addi	a5,s0,8
    80003130:	f6f43c23          	sd	a5,-136(s0)
    80003134:	00000493          	li	s1,0
    80003138:	22050063          	beqz	a0,80003358 <__printf+0x2a0>
    8000313c:	00002a37          	lui	s4,0x2
    80003140:	00018ab7          	lui	s5,0x18
    80003144:	000f4b37          	lui	s6,0xf4
    80003148:	00989bb7          	lui	s7,0x989
    8000314c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003150:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003154:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003158:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000315c:	00148c9b          	addiw	s9,s1,1
    80003160:	02500793          	li	a5,37
    80003164:	01998933          	add	s2,s3,s9
    80003168:	38f51263          	bne	a0,a5,800034ec <__printf+0x434>
    8000316c:	00094783          	lbu	a5,0(s2)
    80003170:	00078c9b          	sext.w	s9,a5
    80003174:	1e078263          	beqz	a5,80003358 <__printf+0x2a0>
    80003178:	0024849b          	addiw	s1,s1,2
    8000317c:	07000713          	li	a4,112
    80003180:	00998933          	add	s2,s3,s1
    80003184:	38e78a63          	beq	a5,a4,80003518 <__printf+0x460>
    80003188:	20f76863          	bltu	a4,a5,80003398 <__printf+0x2e0>
    8000318c:	42a78863          	beq	a5,a0,800035bc <__printf+0x504>
    80003190:	06400713          	li	a4,100
    80003194:	40e79663          	bne	a5,a4,800035a0 <__printf+0x4e8>
    80003198:	f7843783          	ld	a5,-136(s0)
    8000319c:	0007a603          	lw	a2,0(a5)
    800031a0:	00878793          	addi	a5,a5,8
    800031a4:	f6f43c23          	sd	a5,-136(s0)
    800031a8:	42064a63          	bltz	a2,800035dc <__printf+0x524>
    800031ac:	00a00713          	li	a4,10
    800031b0:	02e677bb          	remuw	a5,a2,a4
    800031b4:	00002d97          	auipc	s11,0x2
    800031b8:	0acd8d93          	addi	s11,s11,172 # 80005260 <digits>
    800031bc:	00900593          	li	a1,9
    800031c0:	0006051b          	sext.w	a0,a2
    800031c4:	00000c93          	li	s9,0
    800031c8:	02079793          	slli	a5,a5,0x20
    800031cc:	0207d793          	srli	a5,a5,0x20
    800031d0:	00fd87b3          	add	a5,s11,a5
    800031d4:	0007c783          	lbu	a5,0(a5)
    800031d8:	02e656bb          	divuw	a3,a2,a4
    800031dc:	f8f40023          	sb	a5,-128(s0)
    800031e0:	14c5d863          	bge	a1,a2,80003330 <__printf+0x278>
    800031e4:	06300593          	li	a1,99
    800031e8:	00100c93          	li	s9,1
    800031ec:	02e6f7bb          	remuw	a5,a3,a4
    800031f0:	02079793          	slli	a5,a5,0x20
    800031f4:	0207d793          	srli	a5,a5,0x20
    800031f8:	00fd87b3          	add	a5,s11,a5
    800031fc:	0007c783          	lbu	a5,0(a5)
    80003200:	02e6d73b          	divuw	a4,a3,a4
    80003204:	f8f400a3          	sb	a5,-127(s0)
    80003208:	12a5f463          	bgeu	a1,a0,80003330 <__printf+0x278>
    8000320c:	00a00693          	li	a3,10
    80003210:	00900593          	li	a1,9
    80003214:	02d777bb          	remuw	a5,a4,a3
    80003218:	02079793          	slli	a5,a5,0x20
    8000321c:	0207d793          	srli	a5,a5,0x20
    80003220:	00fd87b3          	add	a5,s11,a5
    80003224:	0007c503          	lbu	a0,0(a5)
    80003228:	02d757bb          	divuw	a5,a4,a3
    8000322c:	f8a40123          	sb	a0,-126(s0)
    80003230:	48e5f263          	bgeu	a1,a4,800036b4 <__printf+0x5fc>
    80003234:	06300513          	li	a0,99
    80003238:	02d7f5bb          	remuw	a1,a5,a3
    8000323c:	02059593          	slli	a1,a1,0x20
    80003240:	0205d593          	srli	a1,a1,0x20
    80003244:	00bd85b3          	add	a1,s11,a1
    80003248:	0005c583          	lbu	a1,0(a1)
    8000324c:	02d7d7bb          	divuw	a5,a5,a3
    80003250:	f8b401a3          	sb	a1,-125(s0)
    80003254:	48e57263          	bgeu	a0,a4,800036d8 <__printf+0x620>
    80003258:	3e700513          	li	a0,999
    8000325c:	02d7f5bb          	remuw	a1,a5,a3
    80003260:	02059593          	slli	a1,a1,0x20
    80003264:	0205d593          	srli	a1,a1,0x20
    80003268:	00bd85b3          	add	a1,s11,a1
    8000326c:	0005c583          	lbu	a1,0(a1)
    80003270:	02d7d7bb          	divuw	a5,a5,a3
    80003274:	f8b40223          	sb	a1,-124(s0)
    80003278:	46e57663          	bgeu	a0,a4,800036e4 <__printf+0x62c>
    8000327c:	02d7f5bb          	remuw	a1,a5,a3
    80003280:	02059593          	slli	a1,a1,0x20
    80003284:	0205d593          	srli	a1,a1,0x20
    80003288:	00bd85b3          	add	a1,s11,a1
    8000328c:	0005c583          	lbu	a1,0(a1)
    80003290:	02d7d7bb          	divuw	a5,a5,a3
    80003294:	f8b402a3          	sb	a1,-123(s0)
    80003298:	46ea7863          	bgeu	s4,a4,80003708 <__printf+0x650>
    8000329c:	02d7f5bb          	remuw	a1,a5,a3
    800032a0:	02059593          	slli	a1,a1,0x20
    800032a4:	0205d593          	srli	a1,a1,0x20
    800032a8:	00bd85b3          	add	a1,s11,a1
    800032ac:	0005c583          	lbu	a1,0(a1)
    800032b0:	02d7d7bb          	divuw	a5,a5,a3
    800032b4:	f8b40323          	sb	a1,-122(s0)
    800032b8:	3eeaf863          	bgeu	s5,a4,800036a8 <__printf+0x5f0>
    800032bc:	02d7f5bb          	remuw	a1,a5,a3
    800032c0:	02059593          	slli	a1,a1,0x20
    800032c4:	0205d593          	srli	a1,a1,0x20
    800032c8:	00bd85b3          	add	a1,s11,a1
    800032cc:	0005c583          	lbu	a1,0(a1)
    800032d0:	02d7d7bb          	divuw	a5,a5,a3
    800032d4:	f8b403a3          	sb	a1,-121(s0)
    800032d8:	42eb7e63          	bgeu	s6,a4,80003714 <__printf+0x65c>
    800032dc:	02d7f5bb          	remuw	a1,a5,a3
    800032e0:	02059593          	slli	a1,a1,0x20
    800032e4:	0205d593          	srli	a1,a1,0x20
    800032e8:	00bd85b3          	add	a1,s11,a1
    800032ec:	0005c583          	lbu	a1,0(a1)
    800032f0:	02d7d7bb          	divuw	a5,a5,a3
    800032f4:	f8b40423          	sb	a1,-120(s0)
    800032f8:	42ebfc63          	bgeu	s7,a4,80003730 <__printf+0x678>
    800032fc:	02079793          	slli	a5,a5,0x20
    80003300:	0207d793          	srli	a5,a5,0x20
    80003304:	00fd8db3          	add	s11,s11,a5
    80003308:	000dc703          	lbu	a4,0(s11)
    8000330c:	00a00793          	li	a5,10
    80003310:	00900c93          	li	s9,9
    80003314:	f8e404a3          	sb	a4,-119(s0)
    80003318:	00065c63          	bgez	a2,80003330 <__printf+0x278>
    8000331c:	f9040713          	addi	a4,s0,-112
    80003320:	00f70733          	add	a4,a4,a5
    80003324:	02d00693          	li	a3,45
    80003328:	fed70823          	sb	a3,-16(a4)
    8000332c:	00078c93          	mv	s9,a5
    80003330:	f8040793          	addi	a5,s0,-128
    80003334:	01978cb3          	add	s9,a5,s9
    80003338:	f7f40d13          	addi	s10,s0,-129
    8000333c:	000cc503          	lbu	a0,0(s9)
    80003340:	fffc8c93          	addi	s9,s9,-1
    80003344:	00000097          	auipc	ra,0x0
    80003348:	b90080e7          	jalr	-1136(ra) # 80002ed4 <consputc>
    8000334c:	ffac98e3          	bne	s9,s10,8000333c <__printf+0x284>
    80003350:	00094503          	lbu	a0,0(s2)
    80003354:	e00514e3          	bnez	a0,8000315c <__printf+0xa4>
    80003358:	1a0c1663          	bnez	s8,80003504 <__printf+0x44c>
    8000335c:	08813083          	ld	ra,136(sp)
    80003360:	08013403          	ld	s0,128(sp)
    80003364:	07813483          	ld	s1,120(sp)
    80003368:	07013903          	ld	s2,112(sp)
    8000336c:	06813983          	ld	s3,104(sp)
    80003370:	06013a03          	ld	s4,96(sp)
    80003374:	05813a83          	ld	s5,88(sp)
    80003378:	05013b03          	ld	s6,80(sp)
    8000337c:	04813b83          	ld	s7,72(sp)
    80003380:	04013c03          	ld	s8,64(sp)
    80003384:	03813c83          	ld	s9,56(sp)
    80003388:	03013d03          	ld	s10,48(sp)
    8000338c:	02813d83          	ld	s11,40(sp)
    80003390:	0d010113          	addi	sp,sp,208
    80003394:	00008067          	ret
    80003398:	07300713          	li	a4,115
    8000339c:	1ce78a63          	beq	a5,a4,80003570 <__printf+0x4b8>
    800033a0:	07800713          	li	a4,120
    800033a4:	1ee79e63          	bne	a5,a4,800035a0 <__printf+0x4e8>
    800033a8:	f7843783          	ld	a5,-136(s0)
    800033ac:	0007a703          	lw	a4,0(a5)
    800033b0:	00878793          	addi	a5,a5,8
    800033b4:	f6f43c23          	sd	a5,-136(s0)
    800033b8:	28074263          	bltz	a4,8000363c <__printf+0x584>
    800033bc:	00002d97          	auipc	s11,0x2
    800033c0:	ea4d8d93          	addi	s11,s11,-348 # 80005260 <digits>
    800033c4:	00f77793          	andi	a5,a4,15
    800033c8:	00fd87b3          	add	a5,s11,a5
    800033cc:	0007c683          	lbu	a3,0(a5)
    800033d0:	00f00613          	li	a2,15
    800033d4:	0007079b          	sext.w	a5,a4
    800033d8:	f8d40023          	sb	a3,-128(s0)
    800033dc:	0047559b          	srliw	a1,a4,0x4
    800033e0:	0047569b          	srliw	a3,a4,0x4
    800033e4:	00000c93          	li	s9,0
    800033e8:	0ee65063          	bge	a2,a4,800034c8 <__printf+0x410>
    800033ec:	00f6f693          	andi	a3,a3,15
    800033f0:	00dd86b3          	add	a3,s11,a3
    800033f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800033f8:	0087d79b          	srliw	a5,a5,0x8
    800033fc:	00100c93          	li	s9,1
    80003400:	f8d400a3          	sb	a3,-127(s0)
    80003404:	0cb67263          	bgeu	a2,a1,800034c8 <__printf+0x410>
    80003408:	00f7f693          	andi	a3,a5,15
    8000340c:	00dd86b3          	add	a3,s11,a3
    80003410:	0006c583          	lbu	a1,0(a3)
    80003414:	00f00613          	li	a2,15
    80003418:	0047d69b          	srliw	a3,a5,0x4
    8000341c:	f8b40123          	sb	a1,-126(s0)
    80003420:	0047d593          	srli	a1,a5,0x4
    80003424:	28f67e63          	bgeu	a2,a5,800036c0 <__printf+0x608>
    80003428:	00f6f693          	andi	a3,a3,15
    8000342c:	00dd86b3          	add	a3,s11,a3
    80003430:	0006c503          	lbu	a0,0(a3)
    80003434:	0087d813          	srli	a6,a5,0x8
    80003438:	0087d69b          	srliw	a3,a5,0x8
    8000343c:	f8a401a3          	sb	a0,-125(s0)
    80003440:	28b67663          	bgeu	a2,a1,800036cc <__printf+0x614>
    80003444:	00f6f693          	andi	a3,a3,15
    80003448:	00dd86b3          	add	a3,s11,a3
    8000344c:	0006c583          	lbu	a1,0(a3)
    80003450:	00c7d513          	srli	a0,a5,0xc
    80003454:	00c7d69b          	srliw	a3,a5,0xc
    80003458:	f8b40223          	sb	a1,-124(s0)
    8000345c:	29067a63          	bgeu	a2,a6,800036f0 <__printf+0x638>
    80003460:	00f6f693          	andi	a3,a3,15
    80003464:	00dd86b3          	add	a3,s11,a3
    80003468:	0006c583          	lbu	a1,0(a3)
    8000346c:	0107d813          	srli	a6,a5,0x10
    80003470:	0107d69b          	srliw	a3,a5,0x10
    80003474:	f8b402a3          	sb	a1,-123(s0)
    80003478:	28a67263          	bgeu	a2,a0,800036fc <__printf+0x644>
    8000347c:	00f6f693          	andi	a3,a3,15
    80003480:	00dd86b3          	add	a3,s11,a3
    80003484:	0006c683          	lbu	a3,0(a3)
    80003488:	0147d79b          	srliw	a5,a5,0x14
    8000348c:	f8d40323          	sb	a3,-122(s0)
    80003490:	21067663          	bgeu	a2,a6,8000369c <__printf+0x5e4>
    80003494:	02079793          	slli	a5,a5,0x20
    80003498:	0207d793          	srli	a5,a5,0x20
    8000349c:	00fd8db3          	add	s11,s11,a5
    800034a0:	000dc683          	lbu	a3,0(s11)
    800034a4:	00800793          	li	a5,8
    800034a8:	00700c93          	li	s9,7
    800034ac:	f8d403a3          	sb	a3,-121(s0)
    800034b0:	00075c63          	bgez	a4,800034c8 <__printf+0x410>
    800034b4:	f9040713          	addi	a4,s0,-112
    800034b8:	00f70733          	add	a4,a4,a5
    800034bc:	02d00693          	li	a3,45
    800034c0:	fed70823          	sb	a3,-16(a4)
    800034c4:	00078c93          	mv	s9,a5
    800034c8:	f8040793          	addi	a5,s0,-128
    800034cc:	01978cb3          	add	s9,a5,s9
    800034d0:	f7f40d13          	addi	s10,s0,-129
    800034d4:	000cc503          	lbu	a0,0(s9)
    800034d8:	fffc8c93          	addi	s9,s9,-1
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	9f8080e7          	jalr	-1544(ra) # 80002ed4 <consputc>
    800034e4:	ff9d18e3          	bne	s10,s9,800034d4 <__printf+0x41c>
    800034e8:	0100006f          	j	800034f8 <__printf+0x440>
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	9e8080e7          	jalr	-1560(ra) # 80002ed4 <consputc>
    800034f4:	000c8493          	mv	s1,s9
    800034f8:	00094503          	lbu	a0,0(s2)
    800034fc:	c60510e3          	bnez	a0,8000315c <__printf+0xa4>
    80003500:	e40c0ee3          	beqz	s8,8000335c <__printf+0x2a4>
    80003504:	00003517          	auipc	a0,0x3
    80003508:	77c50513          	addi	a0,a0,1916 # 80006c80 <pr>
    8000350c:	00001097          	auipc	ra,0x1
    80003510:	94c080e7          	jalr	-1716(ra) # 80003e58 <release>
    80003514:	e49ff06f          	j	8000335c <__printf+0x2a4>
    80003518:	f7843783          	ld	a5,-136(s0)
    8000351c:	03000513          	li	a0,48
    80003520:	01000d13          	li	s10,16
    80003524:	00878713          	addi	a4,a5,8
    80003528:	0007bc83          	ld	s9,0(a5)
    8000352c:	f6e43c23          	sd	a4,-136(s0)
    80003530:	00000097          	auipc	ra,0x0
    80003534:	9a4080e7          	jalr	-1628(ra) # 80002ed4 <consputc>
    80003538:	07800513          	li	a0,120
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	998080e7          	jalr	-1640(ra) # 80002ed4 <consputc>
    80003544:	00002d97          	auipc	s11,0x2
    80003548:	d1cd8d93          	addi	s11,s11,-740 # 80005260 <digits>
    8000354c:	03ccd793          	srli	a5,s9,0x3c
    80003550:	00fd87b3          	add	a5,s11,a5
    80003554:	0007c503          	lbu	a0,0(a5)
    80003558:	fffd0d1b          	addiw	s10,s10,-1
    8000355c:	004c9c93          	slli	s9,s9,0x4
    80003560:	00000097          	auipc	ra,0x0
    80003564:	974080e7          	jalr	-1676(ra) # 80002ed4 <consputc>
    80003568:	fe0d12e3          	bnez	s10,8000354c <__printf+0x494>
    8000356c:	f8dff06f          	j	800034f8 <__printf+0x440>
    80003570:	f7843783          	ld	a5,-136(s0)
    80003574:	0007bc83          	ld	s9,0(a5)
    80003578:	00878793          	addi	a5,a5,8
    8000357c:	f6f43c23          	sd	a5,-136(s0)
    80003580:	000c9a63          	bnez	s9,80003594 <__printf+0x4dc>
    80003584:	1080006f          	j	8000368c <__printf+0x5d4>
    80003588:	001c8c93          	addi	s9,s9,1
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	948080e7          	jalr	-1720(ra) # 80002ed4 <consputc>
    80003594:	000cc503          	lbu	a0,0(s9)
    80003598:	fe0518e3          	bnez	a0,80003588 <__printf+0x4d0>
    8000359c:	f5dff06f          	j	800034f8 <__printf+0x440>
    800035a0:	02500513          	li	a0,37
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	930080e7          	jalr	-1744(ra) # 80002ed4 <consputc>
    800035ac:	000c8513          	mv	a0,s9
    800035b0:	00000097          	auipc	ra,0x0
    800035b4:	924080e7          	jalr	-1756(ra) # 80002ed4 <consputc>
    800035b8:	f41ff06f          	j	800034f8 <__printf+0x440>
    800035bc:	02500513          	li	a0,37
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	914080e7          	jalr	-1772(ra) # 80002ed4 <consputc>
    800035c8:	f31ff06f          	j	800034f8 <__printf+0x440>
    800035cc:	00030513          	mv	a0,t1
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	7bc080e7          	jalr	1980(ra) # 80003d8c <acquire>
    800035d8:	b4dff06f          	j	80003124 <__printf+0x6c>
    800035dc:	40c0053b          	negw	a0,a2
    800035e0:	00a00713          	li	a4,10
    800035e4:	02e576bb          	remuw	a3,a0,a4
    800035e8:	00002d97          	auipc	s11,0x2
    800035ec:	c78d8d93          	addi	s11,s11,-904 # 80005260 <digits>
    800035f0:	ff700593          	li	a1,-9
    800035f4:	02069693          	slli	a3,a3,0x20
    800035f8:	0206d693          	srli	a3,a3,0x20
    800035fc:	00dd86b3          	add	a3,s11,a3
    80003600:	0006c683          	lbu	a3,0(a3)
    80003604:	02e557bb          	divuw	a5,a0,a4
    80003608:	f8d40023          	sb	a3,-128(s0)
    8000360c:	10b65e63          	bge	a2,a1,80003728 <__printf+0x670>
    80003610:	06300593          	li	a1,99
    80003614:	02e7f6bb          	remuw	a3,a5,a4
    80003618:	02069693          	slli	a3,a3,0x20
    8000361c:	0206d693          	srli	a3,a3,0x20
    80003620:	00dd86b3          	add	a3,s11,a3
    80003624:	0006c683          	lbu	a3,0(a3)
    80003628:	02e7d73b          	divuw	a4,a5,a4
    8000362c:	00200793          	li	a5,2
    80003630:	f8d400a3          	sb	a3,-127(s0)
    80003634:	bca5ece3          	bltu	a1,a0,8000320c <__printf+0x154>
    80003638:	ce5ff06f          	j	8000331c <__printf+0x264>
    8000363c:	40e007bb          	negw	a5,a4
    80003640:	00002d97          	auipc	s11,0x2
    80003644:	c20d8d93          	addi	s11,s11,-992 # 80005260 <digits>
    80003648:	00f7f693          	andi	a3,a5,15
    8000364c:	00dd86b3          	add	a3,s11,a3
    80003650:	0006c583          	lbu	a1,0(a3)
    80003654:	ff100613          	li	a2,-15
    80003658:	0047d69b          	srliw	a3,a5,0x4
    8000365c:	f8b40023          	sb	a1,-128(s0)
    80003660:	0047d59b          	srliw	a1,a5,0x4
    80003664:	0ac75e63          	bge	a4,a2,80003720 <__printf+0x668>
    80003668:	00f6f693          	andi	a3,a3,15
    8000366c:	00dd86b3          	add	a3,s11,a3
    80003670:	0006c603          	lbu	a2,0(a3)
    80003674:	00f00693          	li	a3,15
    80003678:	0087d79b          	srliw	a5,a5,0x8
    8000367c:	f8c400a3          	sb	a2,-127(s0)
    80003680:	d8b6e4e3          	bltu	a3,a1,80003408 <__printf+0x350>
    80003684:	00200793          	li	a5,2
    80003688:	e2dff06f          	j	800034b4 <__printf+0x3fc>
    8000368c:	00002c97          	auipc	s9,0x2
    80003690:	bb4c8c93          	addi	s9,s9,-1100 # 80005240 <_ZZ12printIntegermE6digits+0x240>
    80003694:	02800513          	li	a0,40
    80003698:	ef1ff06f          	j	80003588 <__printf+0x4d0>
    8000369c:	00700793          	li	a5,7
    800036a0:	00600c93          	li	s9,6
    800036a4:	e0dff06f          	j	800034b0 <__printf+0x3f8>
    800036a8:	00700793          	li	a5,7
    800036ac:	00600c93          	li	s9,6
    800036b0:	c69ff06f          	j	80003318 <__printf+0x260>
    800036b4:	00300793          	li	a5,3
    800036b8:	00200c93          	li	s9,2
    800036bc:	c5dff06f          	j	80003318 <__printf+0x260>
    800036c0:	00300793          	li	a5,3
    800036c4:	00200c93          	li	s9,2
    800036c8:	de9ff06f          	j	800034b0 <__printf+0x3f8>
    800036cc:	00400793          	li	a5,4
    800036d0:	00300c93          	li	s9,3
    800036d4:	dddff06f          	j	800034b0 <__printf+0x3f8>
    800036d8:	00400793          	li	a5,4
    800036dc:	00300c93          	li	s9,3
    800036e0:	c39ff06f          	j	80003318 <__printf+0x260>
    800036e4:	00500793          	li	a5,5
    800036e8:	00400c93          	li	s9,4
    800036ec:	c2dff06f          	j	80003318 <__printf+0x260>
    800036f0:	00500793          	li	a5,5
    800036f4:	00400c93          	li	s9,4
    800036f8:	db9ff06f          	j	800034b0 <__printf+0x3f8>
    800036fc:	00600793          	li	a5,6
    80003700:	00500c93          	li	s9,5
    80003704:	dadff06f          	j	800034b0 <__printf+0x3f8>
    80003708:	00600793          	li	a5,6
    8000370c:	00500c93          	li	s9,5
    80003710:	c09ff06f          	j	80003318 <__printf+0x260>
    80003714:	00800793          	li	a5,8
    80003718:	00700c93          	li	s9,7
    8000371c:	bfdff06f          	j	80003318 <__printf+0x260>
    80003720:	00100793          	li	a5,1
    80003724:	d91ff06f          	j	800034b4 <__printf+0x3fc>
    80003728:	00100793          	li	a5,1
    8000372c:	bf1ff06f          	j	8000331c <__printf+0x264>
    80003730:	00900793          	li	a5,9
    80003734:	00800c93          	li	s9,8
    80003738:	be1ff06f          	j	80003318 <__printf+0x260>
    8000373c:	00002517          	auipc	a0,0x2
    80003740:	b0c50513          	addi	a0,a0,-1268 # 80005248 <_ZZ12printIntegermE6digits+0x248>
    80003744:	00000097          	auipc	ra,0x0
    80003748:	918080e7          	jalr	-1768(ra) # 8000305c <panic>

000000008000374c <printfinit>:
    8000374c:	fe010113          	addi	sp,sp,-32
    80003750:	00813823          	sd	s0,16(sp)
    80003754:	00913423          	sd	s1,8(sp)
    80003758:	00113c23          	sd	ra,24(sp)
    8000375c:	02010413          	addi	s0,sp,32
    80003760:	00003497          	auipc	s1,0x3
    80003764:	52048493          	addi	s1,s1,1312 # 80006c80 <pr>
    80003768:	00048513          	mv	a0,s1
    8000376c:	00002597          	auipc	a1,0x2
    80003770:	aec58593          	addi	a1,a1,-1300 # 80005258 <_ZZ12printIntegermE6digits+0x258>
    80003774:	00000097          	auipc	ra,0x0
    80003778:	5f4080e7          	jalr	1524(ra) # 80003d68 <initlock>
    8000377c:	01813083          	ld	ra,24(sp)
    80003780:	01013403          	ld	s0,16(sp)
    80003784:	0004ac23          	sw	zero,24(s1)
    80003788:	00813483          	ld	s1,8(sp)
    8000378c:	02010113          	addi	sp,sp,32
    80003790:	00008067          	ret

0000000080003794 <uartinit>:
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00813423          	sd	s0,8(sp)
    8000379c:	01010413          	addi	s0,sp,16
    800037a0:	100007b7          	lui	a5,0x10000
    800037a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800037a8:	f8000713          	li	a4,-128
    800037ac:	00e781a3          	sb	a4,3(a5)
    800037b0:	00300713          	li	a4,3
    800037b4:	00e78023          	sb	a4,0(a5)
    800037b8:	000780a3          	sb	zero,1(a5)
    800037bc:	00e781a3          	sb	a4,3(a5)
    800037c0:	00700693          	li	a3,7
    800037c4:	00d78123          	sb	a3,2(a5)
    800037c8:	00e780a3          	sb	a4,1(a5)
    800037cc:	00813403          	ld	s0,8(sp)
    800037d0:	01010113          	addi	sp,sp,16
    800037d4:	00008067          	ret

00000000800037d8 <uartputc>:
    800037d8:	00002797          	auipc	a5,0x2
    800037dc:	2307a783          	lw	a5,560(a5) # 80005a08 <panicked>
    800037e0:	00078463          	beqz	a5,800037e8 <uartputc+0x10>
    800037e4:	0000006f          	j	800037e4 <uartputc+0xc>
    800037e8:	fd010113          	addi	sp,sp,-48
    800037ec:	02813023          	sd	s0,32(sp)
    800037f0:	00913c23          	sd	s1,24(sp)
    800037f4:	01213823          	sd	s2,16(sp)
    800037f8:	01313423          	sd	s3,8(sp)
    800037fc:	02113423          	sd	ra,40(sp)
    80003800:	03010413          	addi	s0,sp,48
    80003804:	00002917          	auipc	s2,0x2
    80003808:	20c90913          	addi	s2,s2,524 # 80005a10 <uart_tx_r>
    8000380c:	00093783          	ld	a5,0(s2)
    80003810:	00002497          	auipc	s1,0x2
    80003814:	20848493          	addi	s1,s1,520 # 80005a18 <uart_tx_w>
    80003818:	0004b703          	ld	a4,0(s1)
    8000381c:	02078693          	addi	a3,a5,32
    80003820:	00050993          	mv	s3,a0
    80003824:	02e69c63          	bne	a3,a4,8000385c <uartputc+0x84>
    80003828:	00001097          	auipc	ra,0x1
    8000382c:	834080e7          	jalr	-1996(ra) # 8000405c <push_on>
    80003830:	00093783          	ld	a5,0(s2)
    80003834:	0004b703          	ld	a4,0(s1)
    80003838:	02078793          	addi	a5,a5,32
    8000383c:	00e79463          	bne	a5,a4,80003844 <uartputc+0x6c>
    80003840:	0000006f          	j	80003840 <uartputc+0x68>
    80003844:	00001097          	auipc	ra,0x1
    80003848:	88c080e7          	jalr	-1908(ra) # 800040d0 <pop_on>
    8000384c:	00093783          	ld	a5,0(s2)
    80003850:	0004b703          	ld	a4,0(s1)
    80003854:	02078693          	addi	a3,a5,32
    80003858:	fce688e3          	beq	a3,a4,80003828 <uartputc+0x50>
    8000385c:	01f77693          	andi	a3,a4,31
    80003860:	00003597          	auipc	a1,0x3
    80003864:	44058593          	addi	a1,a1,1088 # 80006ca0 <uart_tx_buf>
    80003868:	00d586b3          	add	a3,a1,a3
    8000386c:	00170713          	addi	a4,a4,1
    80003870:	01368023          	sb	s3,0(a3)
    80003874:	00e4b023          	sd	a4,0(s1)
    80003878:	10000637          	lui	a2,0x10000
    8000387c:	02f71063          	bne	a4,a5,8000389c <uartputc+0xc4>
    80003880:	0340006f          	j	800038b4 <uartputc+0xdc>
    80003884:	00074703          	lbu	a4,0(a4)
    80003888:	00f93023          	sd	a5,0(s2)
    8000388c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003890:	00093783          	ld	a5,0(s2)
    80003894:	0004b703          	ld	a4,0(s1)
    80003898:	00f70e63          	beq	a4,a5,800038b4 <uartputc+0xdc>
    8000389c:	00564683          	lbu	a3,5(a2)
    800038a0:	01f7f713          	andi	a4,a5,31
    800038a4:	00e58733          	add	a4,a1,a4
    800038a8:	0206f693          	andi	a3,a3,32
    800038ac:	00178793          	addi	a5,a5,1
    800038b0:	fc069ae3          	bnez	a3,80003884 <uartputc+0xac>
    800038b4:	02813083          	ld	ra,40(sp)
    800038b8:	02013403          	ld	s0,32(sp)
    800038bc:	01813483          	ld	s1,24(sp)
    800038c0:	01013903          	ld	s2,16(sp)
    800038c4:	00813983          	ld	s3,8(sp)
    800038c8:	03010113          	addi	sp,sp,48
    800038cc:	00008067          	ret

00000000800038d0 <uartputc_sync>:
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813423          	sd	s0,8(sp)
    800038d8:	01010413          	addi	s0,sp,16
    800038dc:	00002717          	auipc	a4,0x2
    800038e0:	12c72703          	lw	a4,300(a4) # 80005a08 <panicked>
    800038e4:	02071663          	bnez	a4,80003910 <uartputc_sync+0x40>
    800038e8:	00050793          	mv	a5,a0
    800038ec:	100006b7          	lui	a3,0x10000
    800038f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800038f4:	02077713          	andi	a4,a4,32
    800038f8:	fe070ce3          	beqz	a4,800038f0 <uartputc_sync+0x20>
    800038fc:	0ff7f793          	andi	a5,a5,255
    80003900:	00f68023          	sb	a5,0(a3)
    80003904:	00813403          	ld	s0,8(sp)
    80003908:	01010113          	addi	sp,sp,16
    8000390c:	00008067          	ret
    80003910:	0000006f          	j	80003910 <uartputc_sync+0x40>

0000000080003914 <uartstart>:
    80003914:	ff010113          	addi	sp,sp,-16
    80003918:	00813423          	sd	s0,8(sp)
    8000391c:	01010413          	addi	s0,sp,16
    80003920:	00002617          	auipc	a2,0x2
    80003924:	0f060613          	addi	a2,a2,240 # 80005a10 <uart_tx_r>
    80003928:	00002517          	auipc	a0,0x2
    8000392c:	0f050513          	addi	a0,a0,240 # 80005a18 <uart_tx_w>
    80003930:	00063783          	ld	a5,0(a2)
    80003934:	00053703          	ld	a4,0(a0)
    80003938:	04f70263          	beq	a4,a5,8000397c <uartstart+0x68>
    8000393c:	100005b7          	lui	a1,0x10000
    80003940:	00003817          	auipc	a6,0x3
    80003944:	36080813          	addi	a6,a6,864 # 80006ca0 <uart_tx_buf>
    80003948:	01c0006f          	j	80003964 <uartstart+0x50>
    8000394c:	0006c703          	lbu	a4,0(a3)
    80003950:	00f63023          	sd	a5,0(a2)
    80003954:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003958:	00063783          	ld	a5,0(a2)
    8000395c:	00053703          	ld	a4,0(a0)
    80003960:	00f70e63          	beq	a4,a5,8000397c <uartstart+0x68>
    80003964:	01f7f713          	andi	a4,a5,31
    80003968:	00e806b3          	add	a3,a6,a4
    8000396c:	0055c703          	lbu	a4,5(a1)
    80003970:	00178793          	addi	a5,a5,1
    80003974:	02077713          	andi	a4,a4,32
    80003978:	fc071ae3          	bnez	a4,8000394c <uartstart+0x38>
    8000397c:	00813403          	ld	s0,8(sp)
    80003980:	01010113          	addi	sp,sp,16
    80003984:	00008067          	ret

0000000080003988 <uartgetc>:
    80003988:	ff010113          	addi	sp,sp,-16
    8000398c:	00813423          	sd	s0,8(sp)
    80003990:	01010413          	addi	s0,sp,16
    80003994:	10000737          	lui	a4,0x10000
    80003998:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000399c:	0017f793          	andi	a5,a5,1
    800039a0:	00078c63          	beqz	a5,800039b8 <uartgetc+0x30>
    800039a4:	00074503          	lbu	a0,0(a4)
    800039a8:	0ff57513          	andi	a0,a0,255
    800039ac:	00813403          	ld	s0,8(sp)
    800039b0:	01010113          	addi	sp,sp,16
    800039b4:	00008067          	ret
    800039b8:	fff00513          	li	a0,-1
    800039bc:	ff1ff06f          	j	800039ac <uartgetc+0x24>

00000000800039c0 <uartintr>:
    800039c0:	100007b7          	lui	a5,0x10000
    800039c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800039c8:	0017f793          	andi	a5,a5,1
    800039cc:	0a078463          	beqz	a5,80003a74 <uartintr+0xb4>
    800039d0:	fe010113          	addi	sp,sp,-32
    800039d4:	00813823          	sd	s0,16(sp)
    800039d8:	00913423          	sd	s1,8(sp)
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	02010413          	addi	s0,sp,32
    800039e4:	100004b7          	lui	s1,0x10000
    800039e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800039ec:	0ff57513          	andi	a0,a0,255
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	534080e7          	jalr	1332(ra) # 80002f24 <consoleintr>
    800039f8:	0054c783          	lbu	a5,5(s1)
    800039fc:	0017f793          	andi	a5,a5,1
    80003a00:	fe0794e3          	bnez	a5,800039e8 <uartintr+0x28>
    80003a04:	00002617          	auipc	a2,0x2
    80003a08:	00c60613          	addi	a2,a2,12 # 80005a10 <uart_tx_r>
    80003a0c:	00002517          	auipc	a0,0x2
    80003a10:	00c50513          	addi	a0,a0,12 # 80005a18 <uart_tx_w>
    80003a14:	00063783          	ld	a5,0(a2)
    80003a18:	00053703          	ld	a4,0(a0)
    80003a1c:	04f70263          	beq	a4,a5,80003a60 <uartintr+0xa0>
    80003a20:	100005b7          	lui	a1,0x10000
    80003a24:	00003817          	auipc	a6,0x3
    80003a28:	27c80813          	addi	a6,a6,636 # 80006ca0 <uart_tx_buf>
    80003a2c:	01c0006f          	j	80003a48 <uartintr+0x88>
    80003a30:	0006c703          	lbu	a4,0(a3)
    80003a34:	00f63023          	sd	a5,0(a2)
    80003a38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a3c:	00063783          	ld	a5,0(a2)
    80003a40:	00053703          	ld	a4,0(a0)
    80003a44:	00f70e63          	beq	a4,a5,80003a60 <uartintr+0xa0>
    80003a48:	01f7f713          	andi	a4,a5,31
    80003a4c:	00e806b3          	add	a3,a6,a4
    80003a50:	0055c703          	lbu	a4,5(a1)
    80003a54:	00178793          	addi	a5,a5,1
    80003a58:	02077713          	andi	a4,a4,32
    80003a5c:	fc071ae3          	bnez	a4,80003a30 <uartintr+0x70>
    80003a60:	01813083          	ld	ra,24(sp)
    80003a64:	01013403          	ld	s0,16(sp)
    80003a68:	00813483          	ld	s1,8(sp)
    80003a6c:	02010113          	addi	sp,sp,32
    80003a70:	00008067          	ret
    80003a74:	00002617          	auipc	a2,0x2
    80003a78:	f9c60613          	addi	a2,a2,-100 # 80005a10 <uart_tx_r>
    80003a7c:	00002517          	auipc	a0,0x2
    80003a80:	f9c50513          	addi	a0,a0,-100 # 80005a18 <uart_tx_w>
    80003a84:	00063783          	ld	a5,0(a2)
    80003a88:	00053703          	ld	a4,0(a0)
    80003a8c:	04f70263          	beq	a4,a5,80003ad0 <uartintr+0x110>
    80003a90:	100005b7          	lui	a1,0x10000
    80003a94:	00003817          	auipc	a6,0x3
    80003a98:	20c80813          	addi	a6,a6,524 # 80006ca0 <uart_tx_buf>
    80003a9c:	01c0006f          	j	80003ab8 <uartintr+0xf8>
    80003aa0:	0006c703          	lbu	a4,0(a3)
    80003aa4:	00f63023          	sd	a5,0(a2)
    80003aa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003aac:	00063783          	ld	a5,0(a2)
    80003ab0:	00053703          	ld	a4,0(a0)
    80003ab4:	02f70063          	beq	a4,a5,80003ad4 <uartintr+0x114>
    80003ab8:	01f7f713          	andi	a4,a5,31
    80003abc:	00e806b3          	add	a3,a6,a4
    80003ac0:	0055c703          	lbu	a4,5(a1)
    80003ac4:	00178793          	addi	a5,a5,1
    80003ac8:	02077713          	andi	a4,a4,32
    80003acc:	fc071ae3          	bnez	a4,80003aa0 <uartintr+0xe0>
    80003ad0:	00008067          	ret
    80003ad4:	00008067          	ret

0000000080003ad8 <kinit>:
    80003ad8:	fc010113          	addi	sp,sp,-64
    80003adc:	02913423          	sd	s1,40(sp)
    80003ae0:	fffff7b7          	lui	a5,0xfffff
    80003ae4:	00004497          	auipc	s1,0x4
    80003ae8:	1eb48493          	addi	s1,s1,491 # 80007ccf <end+0xfff>
    80003aec:	02813823          	sd	s0,48(sp)
    80003af0:	01313c23          	sd	s3,24(sp)
    80003af4:	00f4f4b3          	and	s1,s1,a5
    80003af8:	02113c23          	sd	ra,56(sp)
    80003afc:	03213023          	sd	s2,32(sp)
    80003b00:	01413823          	sd	s4,16(sp)
    80003b04:	01513423          	sd	s5,8(sp)
    80003b08:	04010413          	addi	s0,sp,64
    80003b0c:	000017b7          	lui	a5,0x1
    80003b10:	01100993          	li	s3,17
    80003b14:	00f487b3          	add	a5,s1,a5
    80003b18:	01b99993          	slli	s3,s3,0x1b
    80003b1c:	06f9e063          	bltu	s3,a5,80003b7c <kinit+0xa4>
    80003b20:	00003a97          	auipc	s5,0x3
    80003b24:	1b0a8a93          	addi	s5,s5,432 # 80006cd0 <end>
    80003b28:	0754ec63          	bltu	s1,s5,80003ba0 <kinit+0xc8>
    80003b2c:	0734fa63          	bgeu	s1,s3,80003ba0 <kinit+0xc8>
    80003b30:	00088a37          	lui	s4,0x88
    80003b34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003b38:	00002917          	auipc	s2,0x2
    80003b3c:	ee890913          	addi	s2,s2,-280 # 80005a20 <kmem>
    80003b40:	00ca1a13          	slli	s4,s4,0xc
    80003b44:	0140006f          	j	80003b58 <kinit+0x80>
    80003b48:	000017b7          	lui	a5,0x1
    80003b4c:	00f484b3          	add	s1,s1,a5
    80003b50:	0554e863          	bltu	s1,s5,80003ba0 <kinit+0xc8>
    80003b54:	0534f663          	bgeu	s1,s3,80003ba0 <kinit+0xc8>
    80003b58:	00001637          	lui	a2,0x1
    80003b5c:	00100593          	li	a1,1
    80003b60:	00048513          	mv	a0,s1
    80003b64:	00000097          	auipc	ra,0x0
    80003b68:	5e4080e7          	jalr	1508(ra) # 80004148 <__memset>
    80003b6c:	00093783          	ld	a5,0(s2)
    80003b70:	00f4b023          	sd	a5,0(s1)
    80003b74:	00993023          	sd	s1,0(s2)
    80003b78:	fd4498e3          	bne	s1,s4,80003b48 <kinit+0x70>
    80003b7c:	03813083          	ld	ra,56(sp)
    80003b80:	03013403          	ld	s0,48(sp)
    80003b84:	02813483          	ld	s1,40(sp)
    80003b88:	02013903          	ld	s2,32(sp)
    80003b8c:	01813983          	ld	s3,24(sp)
    80003b90:	01013a03          	ld	s4,16(sp)
    80003b94:	00813a83          	ld	s5,8(sp)
    80003b98:	04010113          	addi	sp,sp,64
    80003b9c:	00008067          	ret
    80003ba0:	00001517          	auipc	a0,0x1
    80003ba4:	6d850513          	addi	a0,a0,1752 # 80005278 <digits+0x18>
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	4b4080e7          	jalr	1204(ra) # 8000305c <panic>

0000000080003bb0 <freerange>:
    80003bb0:	fc010113          	addi	sp,sp,-64
    80003bb4:	000017b7          	lui	a5,0x1
    80003bb8:	02913423          	sd	s1,40(sp)
    80003bbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003bc0:	009504b3          	add	s1,a0,s1
    80003bc4:	fffff537          	lui	a0,0xfffff
    80003bc8:	02813823          	sd	s0,48(sp)
    80003bcc:	02113c23          	sd	ra,56(sp)
    80003bd0:	03213023          	sd	s2,32(sp)
    80003bd4:	01313c23          	sd	s3,24(sp)
    80003bd8:	01413823          	sd	s4,16(sp)
    80003bdc:	01513423          	sd	s5,8(sp)
    80003be0:	01613023          	sd	s6,0(sp)
    80003be4:	04010413          	addi	s0,sp,64
    80003be8:	00a4f4b3          	and	s1,s1,a0
    80003bec:	00f487b3          	add	a5,s1,a5
    80003bf0:	06f5e463          	bltu	a1,a5,80003c58 <freerange+0xa8>
    80003bf4:	00003a97          	auipc	s5,0x3
    80003bf8:	0dca8a93          	addi	s5,s5,220 # 80006cd0 <end>
    80003bfc:	0954e263          	bltu	s1,s5,80003c80 <freerange+0xd0>
    80003c00:	01100993          	li	s3,17
    80003c04:	01b99993          	slli	s3,s3,0x1b
    80003c08:	0734fc63          	bgeu	s1,s3,80003c80 <freerange+0xd0>
    80003c0c:	00058a13          	mv	s4,a1
    80003c10:	00002917          	auipc	s2,0x2
    80003c14:	e1090913          	addi	s2,s2,-496 # 80005a20 <kmem>
    80003c18:	00002b37          	lui	s6,0x2
    80003c1c:	0140006f          	j	80003c30 <freerange+0x80>
    80003c20:	000017b7          	lui	a5,0x1
    80003c24:	00f484b3          	add	s1,s1,a5
    80003c28:	0554ec63          	bltu	s1,s5,80003c80 <freerange+0xd0>
    80003c2c:	0534fa63          	bgeu	s1,s3,80003c80 <freerange+0xd0>
    80003c30:	00001637          	lui	a2,0x1
    80003c34:	00100593          	li	a1,1
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	50c080e7          	jalr	1292(ra) # 80004148 <__memset>
    80003c44:	00093703          	ld	a4,0(s2)
    80003c48:	016487b3          	add	a5,s1,s6
    80003c4c:	00e4b023          	sd	a4,0(s1)
    80003c50:	00993023          	sd	s1,0(s2)
    80003c54:	fcfa76e3          	bgeu	s4,a5,80003c20 <freerange+0x70>
    80003c58:	03813083          	ld	ra,56(sp)
    80003c5c:	03013403          	ld	s0,48(sp)
    80003c60:	02813483          	ld	s1,40(sp)
    80003c64:	02013903          	ld	s2,32(sp)
    80003c68:	01813983          	ld	s3,24(sp)
    80003c6c:	01013a03          	ld	s4,16(sp)
    80003c70:	00813a83          	ld	s5,8(sp)
    80003c74:	00013b03          	ld	s6,0(sp)
    80003c78:	04010113          	addi	sp,sp,64
    80003c7c:	00008067          	ret
    80003c80:	00001517          	auipc	a0,0x1
    80003c84:	5f850513          	addi	a0,a0,1528 # 80005278 <digits+0x18>
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	3d4080e7          	jalr	980(ra) # 8000305c <panic>

0000000080003c90 <kfree>:
    80003c90:	fe010113          	addi	sp,sp,-32
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	00913423          	sd	s1,8(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	03451793          	slli	a5,a0,0x34
    80003ca8:	04079c63          	bnez	a5,80003d00 <kfree+0x70>
    80003cac:	00003797          	auipc	a5,0x3
    80003cb0:	02478793          	addi	a5,a5,36 # 80006cd0 <end>
    80003cb4:	00050493          	mv	s1,a0
    80003cb8:	04f56463          	bltu	a0,a5,80003d00 <kfree+0x70>
    80003cbc:	01100793          	li	a5,17
    80003cc0:	01b79793          	slli	a5,a5,0x1b
    80003cc4:	02f57e63          	bgeu	a0,a5,80003d00 <kfree+0x70>
    80003cc8:	00001637          	lui	a2,0x1
    80003ccc:	00100593          	li	a1,1
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	478080e7          	jalr	1144(ra) # 80004148 <__memset>
    80003cd8:	00002797          	auipc	a5,0x2
    80003cdc:	d4878793          	addi	a5,a5,-696 # 80005a20 <kmem>
    80003ce0:	0007b703          	ld	a4,0(a5)
    80003ce4:	01813083          	ld	ra,24(sp)
    80003ce8:	01013403          	ld	s0,16(sp)
    80003cec:	00e4b023          	sd	a4,0(s1)
    80003cf0:	0097b023          	sd	s1,0(a5)
    80003cf4:	00813483          	ld	s1,8(sp)
    80003cf8:	02010113          	addi	sp,sp,32
    80003cfc:	00008067          	ret
    80003d00:	00001517          	auipc	a0,0x1
    80003d04:	57850513          	addi	a0,a0,1400 # 80005278 <digits+0x18>
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	354080e7          	jalr	852(ra) # 8000305c <panic>

0000000080003d10 <kalloc>:
    80003d10:	fe010113          	addi	sp,sp,-32
    80003d14:	00813823          	sd	s0,16(sp)
    80003d18:	00913423          	sd	s1,8(sp)
    80003d1c:	00113c23          	sd	ra,24(sp)
    80003d20:	02010413          	addi	s0,sp,32
    80003d24:	00002797          	auipc	a5,0x2
    80003d28:	cfc78793          	addi	a5,a5,-772 # 80005a20 <kmem>
    80003d2c:	0007b483          	ld	s1,0(a5)
    80003d30:	02048063          	beqz	s1,80003d50 <kalloc+0x40>
    80003d34:	0004b703          	ld	a4,0(s1)
    80003d38:	00001637          	lui	a2,0x1
    80003d3c:	00500593          	li	a1,5
    80003d40:	00048513          	mv	a0,s1
    80003d44:	00e7b023          	sd	a4,0(a5)
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	400080e7          	jalr	1024(ra) # 80004148 <__memset>
    80003d50:	01813083          	ld	ra,24(sp)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	00048513          	mv	a0,s1
    80003d5c:	00813483          	ld	s1,8(sp)
    80003d60:	02010113          	addi	sp,sp,32
    80003d64:	00008067          	ret

0000000080003d68 <initlock>:
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    80003d74:	00813403          	ld	s0,8(sp)
    80003d78:	00b53423          	sd	a1,8(a0)
    80003d7c:	00052023          	sw	zero,0(a0)
    80003d80:	00053823          	sd	zero,16(a0)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret

0000000080003d8c <acquire>:
    80003d8c:	fe010113          	addi	sp,sp,-32
    80003d90:	00813823          	sd	s0,16(sp)
    80003d94:	00913423          	sd	s1,8(sp)
    80003d98:	00113c23          	sd	ra,24(sp)
    80003d9c:	01213023          	sd	s2,0(sp)
    80003da0:	02010413          	addi	s0,sp,32
    80003da4:	00050493          	mv	s1,a0
    80003da8:	10002973          	csrr	s2,sstatus
    80003dac:	100027f3          	csrr	a5,sstatus
    80003db0:	ffd7f793          	andi	a5,a5,-3
    80003db4:	10079073          	csrw	sstatus,a5
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	8ec080e7          	jalr	-1812(ra) # 800026a4 <mycpu>
    80003dc0:	07852783          	lw	a5,120(a0)
    80003dc4:	06078e63          	beqz	a5,80003e40 <acquire+0xb4>
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	8dc080e7          	jalr	-1828(ra) # 800026a4 <mycpu>
    80003dd0:	07852783          	lw	a5,120(a0)
    80003dd4:	0004a703          	lw	a4,0(s1)
    80003dd8:	0017879b          	addiw	a5,a5,1
    80003ddc:	06f52c23          	sw	a5,120(a0)
    80003de0:	04071063          	bnez	a4,80003e20 <acquire+0x94>
    80003de4:	00100713          	li	a4,1
    80003de8:	00070793          	mv	a5,a4
    80003dec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003df0:	0007879b          	sext.w	a5,a5
    80003df4:	fe079ae3          	bnez	a5,80003de8 <acquire+0x5c>
    80003df8:	0ff0000f          	fence
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	8a8080e7          	jalr	-1880(ra) # 800026a4 <mycpu>
    80003e04:	01813083          	ld	ra,24(sp)
    80003e08:	01013403          	ld	s0,16(sp)
    80003e0c:	00a4b823          	sd	a0,16(s1)
    80003e10:	00013903          	ld	s2,0(sp)
    80003e14:	00813483          	ld	s1,8(sp)
    80003e18:	02010113          	addi	sp,sp,32
    80003e1c:	00008067          	ret
    80003e20:	0104b903          	ld	s2,16(s1)
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	880080e7          	jalr	-1920(ra) # 800026a4 <mycpu>
    80003e2c:	faa91ce3          	bne	s2,a0,80003de4 <acquire+0x58>
    80003e30:	00001517          	auipc	a0,0x1
    80003e34:	45050513          	addi	a0,a0,1104 # 80005280 <digits+0x20>
    80003e38:	fffff097          	auipc	ra,0xfffff
    80003e3c:	224080e7          	jalr	548(ra) # 8000305c <panic>
    80003e40:	00195913          	srli	s2,s2,0x1
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	860080e7          	jalr	-1952(ra) # 800026a4 <mycpu>
    80003e4c:	00197913          	andi	s2,s2,1
    80003e50:	07252e23          	sw	s2,124(a0)
    80003e54:	f75ff06f          	j	80003dc8 <acquire+0x3c>

0000000080003e58 <release>:
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00813823          	sd	s0,16(sp)
    80003e60:	00113c23          	sd	ra,24(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	00052783          	lw	a5,0(a0)
    80003e74:	00079a63          	bnez	a5,80003e88 <release+0x30>
    80003e78:	00001517          	auipc	a0,0x1
    80003e7c:	41050513          	addi	a0,a0,1040 # 80005288 <digits+0x28>
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	1dc080e7          	jalr	476(ra) # 8000305c <panic>
    80003e88:	01053903          	ld	s2,16(a0)
    80003e8c:	00050493          	mv	s1,a0
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	814080e7          	jalr	-2028(ra) # 800026a4 <mycpu>
    80003e98:	fea910e3          	bne	s2,a0,80003e78 <release+0x20>
    80003e9c:	0004b823          	sd	zero,16(s1)
    80003ea0:	0ff0000f          	fence
    80003ea4:	0f50000f          	fence	iorw,ow
    80003ea8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	7f8080e7          	jalr	2040(ra) # 800026a4 <mycpu>
    80003eb4:	100027f3          	csrr	a5,sstatus
    80003eb8:	0027f793          	andi	a5,a5,2
    80003ebc:	04079a63          	bnez	a5,80003f10 <release+0xb8>
    80003ec0:	07852783          	lw	a5,120(a0)
    80003ec4:	02f05e63          	blez	a5,80003f00 <release+0xa8>
    80003ec8:	fff7871b          	addiw	a4,a5,-1
    80003ecc:	06e52c23          	sw	a4,120(a0)
    80003ed0:	00071c63          	bnez	a4,80003ee8 <release+0x90>
    80003ed4:	07c52783          	lw	a5,124(a0)
    80003ed8:	00078863          	beqz	a5,80003ee8 <release+0x90>
    80003edc:	100027f3          	csrr	a5,sstatus
    80003ee0:	0027e793          	ori	a5,a5,2
    80003ee4:	10079073          	csrw	sstatus,a5
    80003ee8:	01813083          	ld	ra,24(sp)
    80003eec:	01013403          	ld	s0,16(sp)
    80003ef0:	00813483          	ld	s1,8(sp)
    80003ef4:	00013903          	ld	s2,0(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00008067          	ret
    80003f00:	00001517          	auipc	a0,0x1
    80003f04:	3a850513          	addi	a0,a0,936 # 800052a8 <digits+0x48>
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	154080e7          	jalr	340(ra) # 8000305c <panic>
    80003f10:	00001517          	auipc	a0,0x1
    80003f14:	38050513          	addi	a0,a0,896 # 80005290 <digits+0x30>
    80003f18:	fffff097          	auipc	ra,0xfffff
    80003f1c:	144080e7          	jalr	324(ra) # 8000305c <panic>

0000000080003f20 <holding>:
    80003f20:	00052783          	lw	a5,0(a0)
    80003f24:	00079663          	bnez	a5,80003f30 <holding+0x10>
    80003f28:	00000513          	li	a0,0
    80003f2c:	00008067          	ret
    80003f30:	fe010113          	addi	sp,sp,-32
    80003f34:	00813823          	sd	s0,16(sp)
    80003f38:	00913423          	sd	s1,8(sp)
    80003f3c:	00113c23          	sd	ra,24(sp)
    80003f40:	02010413          	addi	s0,sp,32
    80003f44:	01053483          	ld	s1,16(a0)
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	75c080e7          	jalr	1884(ra) # 800026a4 <mycpu>
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	40a48533          	sub	a0,s1,a0
    80003f5c:	00153513          	seqz	a0,a0
    80003f60:	00813483          	ld	s1,8(sp)
    80003f64:	02010113          	addi	sp,sp,32
    80003f68:	00008067          	ret

0000000080003f6c <push_off>:
    80003f6c:	fe010113          	addi	sp,sp,-32
    80003f70:	00813823          	sd	s0,16(sp)
    80003f74:	00113c23          	sd	ra,24(sp)
    80003f78:	00913423          	sd	s1,8(sp)
    80003f7c:	02010413          	addi	s0,sp,32
    80003f80:	100024f3          	csrr	s1,sstatus
    80003f84:	100027f3          	csrr	a5,sstatus
    80003f88:	ffd7f793          	andi	a5,a5,-3
    80003f8c:	10079073          	csrw	sstatus,a5
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	714080e7          	jalr	1812(ra) # 800026a4 <mycpu>
    80003f98:	07852783          	lw	a5,120(a0)
    80003f9c:	02078663          	beqz	a5,80003fc8 <push_off+0x5c>
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	704080e7          	jalr	1796(ra) # 800026a4 <mycpu>
    80003fa8:	07852783          	lw	a5,120(a0)
    80003fac:	01813083          	ld	ra,24(sp)
    80003fb0:	01013403          	ld	s0,16(sp)
    80003fb4:	0017879b          	addiw	a5,a5,1
    80003fb8:	06f52c23          	sw	a5,120(a0)
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	02010113          	addi	sp,sp,32
    80003fc4:	00008067          	ret
    80003fc8:	0014d493          	srli	s1,s1,0x1
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	6d8080e7          	jalr	1752(ra) # 800026a4 <mycpu>
    80003fd4:	0014f493          	andi	s1,s1,1
    80003fd8:	06952e23          	sw	s1,124(a0)
    80003fdc:	fc5ff06f          	j	80003fa0 <push_off+0x34>

0000000080003fe0 <pop_off>:
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00813023          	sd	s0,0(sp)
    80003fe8:	00113423          	sd	ra,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	6b4080e7          	jalr	1716(ra) # 800026a4 <mycpu>
    80003ff8:	100027f3          	csrr	a5,sstatus
    80003ffc:	0027f793          	andi	a5,a5,2
    80004000:	04079663          	bnez	a5,8000404c <pop_off+0x6c>
    80004004:	07852783          	lw	a5,120(a0)
    80004008:	02f05a63          	blez	a5,8000403c <pop_off+0x5c>
    8000400c:	fff7871b          	addiw	a4,a5,-1
    80004010:	06e52c23          	sw	a4,120(a0)
    80004014:	00071c63          	bnez	a4,8000402c <pop_off+0x4c>
    80004018:	07c52783          	lw	a5,124(a0)
    8000401c:	00078863          	beqz	a5,8000402c <pop_off+0x4c>
    80004020:	100027f3          	csrr	a5,sstatus
    80004024:	0027e793          	ori	a5,a5,2
    80004028:	10079073          	csrw	sstatus,a5
    8000402c:	00813083          	ld	ra,8(sp)
    80004030:	00013403          	ld	s0,0(sp)
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00008067          	ret
    8000403c:	00001517          	auipc	a0,0x1
    80004040:	26c50513          	addi	a0,a0,620 # 800052a8 <digits+0x48>
    80004044:	fffff097          	auipc	ra,0xfffff
    80004048:	018080e7          	jalr	24(ra) # 8000305c <panic>
    8000404c:	00001517          	auipc	a0,0x1
    80004050:	24450513          	addi	a0,a0,580 # 80005290 <digits+0x30>
    80004054:	fffff097          	auipc	ra,0xfffff
    80004058:	008080e7          	jalr	8(ra) # 8000305c <panic>

000000008000405c <push_on>:
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00813823          	sd	s0,16(sp)
    80004064:	00113c23          	sd	ra,24(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	02010413          	addi	s0,sp,32
    80004070:	100024f3          	csrr	s1,sstatus
    80004074:	100027f3          	csrr	a5,sstatus
    80004078:	0027e793          	ori	a5,a5,2
    8000407c:	10079073          	csrw	sstatus,a5
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	624080e7          	jalr	1572(ra) # 800026a4 <mycpu>
    80004088:	07852783          	lw	a5,120(a0)
    8000408c:	02078663          	beqz	a5,800040b8 <push_on+0x5c>
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	614080e7          	jalr	1556(ra) # 800026a4 <mycpu>
    80004098:	07852783          	lw	a5,120(a0)
    8000409c:	01813083          	ld	ra,24(sp)
    800040a0:	01013403          	ld	s0,16(sp)
    800040a4:	0017879b          	addiw	a5,a5,1
    800040a8:	06f52c23          	sw	a5,120(a0)
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret
    800040b8:	0014d493          	srli	s1,s1,0x1
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	5e8080e7          	jalr	1512(ra) # 800026a4 <mycpu>
    800040c4:	0014f493          	andi	s1,s1,1
    800040c8:	06952e23          	sw	s1,124(a0)
    800040cc:	fc5ff06f          	j	80004090 <push_on+0x34>

00000000800040d0 <pop_on>:
    800040d0:	ff010113          	addi	sp,sp,-16
    800040d4:	00813023          	sd	s0,0(sp)
    800040d8:	00113423          	sd	ra,8(sp)
    800040dc:	01010413          	addi	s0,sp,16
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	5c4080e7          	jalr	1476(ra) # 800026a4 <mycpu>
    800040e8:	100027f3          	csrr	a5,sstatus
    800040ec:	0027f793          	andi	a5,a5,2
    800040f0:	04078463          	beqz	a5,80004138 <pop_on+0x68>
    800040f4:	07852783          	lw	a5,120(a0)
    800040f8:	02f05863          	blez	a5,80004128 <pop_on+0x58>
    800040fc:	fff7879b          	addiw	a5,a5,-1
    80004100:	06f52c23          	sw	a5,120(a0)
    80004104:	07853783          	ld	a5,120(a0)
    80004108:	00079863          	bnez	a5,80004118 <pop_on+0x48>
    8000410c:	100027f3          	csrr	a5,sstatus
    80004110:	ffd7f793          	andi	a5,a5,-3
    80004114:	10079073          	csrw	sstatus,a5
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret
    80004128:	00001517          	auipc	a0,0x1
    8000412c:	1a850513          	addi	a0,a0,424 # 800052d0 <digits+0x70>
    80004130:	fffff097          	auipc	ra,0xfffff
    80004134:	f2c080e7          	jalr	-212(ra) # 8000305c <panic>
    80004138:	00001517          	auipc	a0,0x1
    8000413c:	17850513          	addi	a0,a0,376 # 800052b0 <digits+0x50>
    80004140:	fffff097          	auipc	ra,0xfffff
    80004144:	f1c080e7          	jalr	-228(ra) # 8000305c <panic>

0000000080004148 <__memset>:
    80004148:	ff010113          	addi	sp,sp,-16
    8000414c:	00813423          	sd	s0,8(sp)
    80004150:	01010413          	addi	s0,sp,16
    80004154:	1a060e63          	beqz	a2,80004310 <__memset+0x1c8>
    80004158:	40a007b3          	neg	a5,a0
    8000415c:	0077f793          	andi	a5,a5,7
    80004160:	00778693          	addi	a3,a5,7
    80004164:	00b00813          	li	a6,11
    80004168:	0ff5f593          	andi	a1,a1,255
    8000416c:	fff6071b          	addiw	a4,a2,-1
    80004170:	1b06e663          	bltu	a3,a6,8000431c <__memset+0x1d4>
    80004174:	1cd76463          	bltu	a4,a3,8000433c <__memset+0x1f4>
    80004178:	1a078e63          	beqz	a5,80004334 <__memset+0x1ec>
    8000417c:	00b50023          	sb	a1,0(a0)
    80004180:	00100713          	li	a4,1
    80004184:	1ae78463          	beq	a5,a4,8000432c <__memset+0x1e4>
    80004188:	00b500a3          	sb	a1,1(a0)
    8000418c:	00200713          	li	a4,2
    80004190:	1ae78a63          	beq	a5,a4,80004344 <__memset+0x1fc>
    80004194:	00b50123          	sb	a1,2(a0)
    80004198:	00300713          	li	a4,3
    8000419c:	18e78463          	beq	a5,a4,80004324 <__memset+0x1dc>
    800041a0:	00b501a3          	sb	a1,3(a0)
    800041a4:	00400713          	li	a4,4
    800041a8:	1ae78263          	beq	a5,a4,8000434c <__memset+0x204>
    800041ac:	00b50223          	sb	a1,4(a0)
    800041b0:	00500713          	li	a4,5
    800041b4:	1ae78063          	beq	a5,a4,80004354 <__memset+0x20c>
    800041b8:	00b502a3          	sb	a1,5(a0)
    800041bc:	00700713          	li	a4,7
    800041c0:	18e79e63          	bne	a5,a4,8000435c <__memset+0x214>
    800041c4:	00b50323          	sb	a1,6(a0)
    800041c8:	00700e93          	li	t4,7
    800041cc:	00859713          	slli	a4,a1,0x8
    800041d0:	00e5e733          	or	a4,a1,a4
    800041d4:	01059e13          	slli	t3,a1,0x10
    800041d8:	01c76e33          	or	t3,a4,t3
    800041dc:	01859313          	slli	t1,a1,0x18
    800041e0:	006e6333          	or	t1,t3,t1
    800041e4:	02059893          	slli	a7,a1,0x20
    800041e8:	40f60e3b          	subw	t3,a2,a5
    800041ec:	011368b3          	or	a7,t1,a7
    800041f0:	02859813          	slli	a6,a1,0x28
    800041f4:	0108e833          	or	a6,a7,a6
    800041f8:	03059693          	slli	a3,a1,0x30
    800041fc:	003e589b          	srliw	a7,t3,0x3
    80004200:	00d866b3          	or	a3,a6,a3
    80004204:	03859713          	slli	a4,a1,0x38
    80004208:	00389813          	slli	a6,a7,0x3
    8000420c:	00f507b3          	add	a5,a0,a5
    80004210:	00e6e733          	or	a4,a3,a4
    80004214:	000e089b          	sext.w	a7,t3
    80004218:	00f806b3          	add	a3,a6,a5
    8000421c:	00e7b023          	sd	a4,0(a5)
    80004220:	00878793          	addi	a5,a5,8
    80004224:	fed79ce3          	bne	a5,a3,8000421c <__memset+0xd4>
    80004228:	ff8e7793          	andi	a5,t3,-8
    8000422c:	0007871b          	sext.w	a4,a5
    80004230:	01d787bb          	addw	a5,a5,t4
    80004234:	0ce88e63          	beq	a7,a4,80004310 <__memset+0x1c8>
    80004238:	00f50733          	add	a4,a0,a5
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	0017871b          	addiw	a4,a5,1
    80004244:	0cc77663          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	0027871b          	addiw	a4,a5,2
    80004254:	0ac77e63          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	0037871b          	addiw	a4,a5,3
    80004264:	0ac77663          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    80004268:	00e50733          	add	a4,a0,a4
    8000426c:	00b70023          	sb	a1,0(a4)
    80004270:	0047871b          	addiw	a4,a5,4
    80004274:	08c77e63          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    80004278:	00e50733          	add	a4,a0,a4
    8000427c:	00b70023          	sb	a1,0(a4)
    80004280:	0057871b          	addiw	a4,a5,5
    80004284:	08c77663          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00b70023          	sb	a1,0(a4)
    80004290:	0067871b          	addiw	a4,a5,6
    80004294:	06c77e63          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    80004298:	00e50733          	add	a4,a0,a4
    8000429c:	00b70023          	sb	a1,0(a4)
    800042a0:	0077871b          	addiw	a4,a5,7
    800042a4:	06c77663          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    800042a8:	00e50733          	add	a4,a0,a4
    800042ac:	00b70023          	sb	a1,0(a4)
    800042b0:	0087871b          	addiw	a4,a5,8
    800042b4:	04c77e63          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    800042b8:	00e50733          	add	a4,a0,a4
    800042bc:	00b70023          	sb	a1,0(a4)
    800042c0:	0097871b          	addiw	a4,a5,9
    800042c4:	04c77663          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    800042c8:	00e50733          	add	a4,a0,a4
    800042cc:	00b70023          	sb	a1,0(a4)
    800042d0:	00a7871b          	addiw	a4,a5,10
    800042d4:	02c77e63          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    800042d8:	00e50733          	add	a4,a0,a4
    800042dc:	00b70023          	sb	a1,0(a4)
    800042e0:	00b7871b          	addiw	a4,a5,11
    800042e4:	02c77663          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    800042e8:	00e50733          	add	a4,a0,a4
    800042ec:	00b70023          	sb	a1,0(a4)
    800042f0:	00c7871b          	addiw	a4,a5,12
    800042f4:	00c77e63          	bgeu	a4,a2,80004310 <__memset+0x1c8>
    800042f8:	00e50733          	add	a4,a0,a4
    800042fc:	00b70023          	sb	a1,0(a4)
    80004300:	00d7879b          	addiw	a5,a5,13
    80004304:	00c7f663          	bgeu	a5,a2,80004310 <__memset+0x1c8>
    80004308:	00f507b3          	add	a5,a0,a5
    8000430c:	00b78023          	sb	a1,0(a5)
    80004310:	00813403          	ld	s0,8(sp)
    80004314:	01010113          	addi	sp,sp,16
    80004318:	00008067          	ret
    8000431c:	00b00693          	li	a3,11
    80004320:	e55ff06f          	j	80004174 <__memset+0x2c>
    80004324:	00300e93          	li	t4,3
    80004328:	ea5ff06f          	j	800041cc <__memset+0x84>
    8000432c:	00100e93          	li	t4,1
    80004330:	e9dff06f          	j	800041cc <__memset+0x84>
    80004334:	00000e93          	li	t4,0
    80004338:	e95ff06f          	j	800041cc <__memset+0x84>
    8000433c:	00000793          	li	a5,0
    80004340:	ef9ff06f          	j	80004238 <__memset+0xf0>
    80004344:	00200e93          	li	t4,2
    80004348:	e85ff06f          	j	800041cc <__memset+0x84>
    8000434c:	00400e93          	li	t4,4
    80004350:	e7dff06f          	j	800041cc <__memset+0x84>
    80004354:	00500e93          	li	t4,5
    80004358:	e75ff06f          	j	800041cc <__memset+0x84>
    8000435c:	00600e93          	li	t4,6
    80004360:	e6dff06f          	j	800041cc <__memset+0x84>

0000000080004364 <__memmove>:
    80004364:	ff010113          	addi	sp,sp,-16
    80004368:	00813423          	sd	s0,8(sp)
    8000436c:	01010413          	addi	s0,sp,16
    80004370:	0e060863          	beqz	a2,80004460 <__memmove+0xfc>
    80004374:	fff6069b          	addiw	a3,a2,-1
    80004378:	0006881b          	sext.w	a6,a3
    8000437c:	0ea5e863          	bltu	a1,a0,8000446c <__memmove+0x108>
    80004380:	00758713          	addi	a4,a1,7
    80004384:	00a5e7b3          	or	a5,a1,a0
    80004388:	40a70733          	sub	a4,a4,a0
    8000438c:	0077f793          	andi	a5,a5,7
    80004390:	00f73713          	sltiu	a4,a4,15
    80004394:	00174713          	xori	a4,a4,1
    80004398:	0017b793          	seqz	a5,a5
    8000439c:	00e7f7b3          	and	a5,a5,a4
    800043a0:	10078863          	beqz	a5,800044b0 <__memmove+0x14c>
    800043a4:	00900793          	li	a5,9
    800043a8:	1107f463          	bgeu	a5,a6,800044b0 <__memmove+0x14c>
    800043ac:	0036581b          	srliw	a6,a2,0x3
    800043b0:	fff8081b          	addiw	a6,a6,-1
    800043b4:	02081813          	slli	a6,a6,0x20
    800043b8:	01d85893          	srli	a7,a6,0x1d
    800043bc:	00858813          	addi	a6,a1,8
    800043c0:	00058793          	mv	a5,a1
    800043c4:	00050713          	mv	a4,a0
    800043c8:	01088833          	add	a6,a7,a6
    800043cc:	0007b883          	ld	a7,0(a5)
    800043d0:	00878793          	addi	a5,a5,8
    800043d4:	00870713          	addi	a4,a4,8
    800043d8:	ff173c23          	sd	a7,-8(a4)
    800043dc:	ff0798e3          	bne	a5,a6,800043cc <__memmove+0x68>
    800043e0:	ff867713          	andi	a4,a2,-8
    800043e4:	02071793          	slli	a5,a4,0x20
    800043e8:	0207d793          	srli	a5,a5,0x20
    800043ec:	00f585b3          	add	a1,a1,a5
    800043f0:	40e686bb          	subw	a3,a3,a4
    800043f4:	00f507b3          	add	a5,a0,a5
    800043f8:	06e60463          	beq	a2,a4,80004460 <__memmove+0xfc>
    800043fc:	0005c703          	lbu	a4,0(a1)
    80004400:	00e78023          	sb	a4,0(a5)
    80004404:	04068e63          	beqz	a3,80004460 <__memmove+0xfc>
    80004408:	0015c603          	lbu	a2,1(a1)
    8000440c:	00100713          	li	a4,1
    80004410:	00c780a3          	sb	a2,1(a5)
    80004414:	04e68663          	beq	a3,a4,80004460 <__memmove+0xfc>
    80004418:	0025c603          	lbu	a2,2(a1)
    8000441c:	00200713          	li	a4,2
    80004420:	00c78123          	sb	a2,2(a5)
    80004424:	02e68e63          	beq	a3,a4,80004460 <__memmove+0xfc>
    80004428:	0035c603          	lbu	a2,3(a1)
    8000442c:	00300713          	li	a4,3
    80004430:	00c781a3          	sb	a2,3(a5)
    80004434:	02e68663          	beq	a3,a4,80004460 <__memmove+0xfc>
    80004438:	0045c603          	lbu	a2,4(a1)
    8000443c:	00400713          	li	a4,4
    80004440:	00c78223          	sb	a2,4(a5)
    80004444:	00e68e63          	beq	a3,a4,80004460 <__memmove+0xfc>
    80004448:	0055c603          	lbu	a2,5(a1)
    8000444c:	00500713          	li	a4,5
    80004450:	00c782a3          	sb	a2,5(a5)
    80004454:	00e68663          	beq	a3,a4,80004460 <__memmove+0xfc>
    80004458:	0065c703          	lbu	a4,6(a1)
    8000445c:	00e78323          	sb	a4,6(a5)
    80004460:	00813403          	ld	s0,8(sp)
    80004464:	01010113          	addi	sp,sp,16
    80004468:	00008067          	ret
    8000446c:	02061713          	slli	a4,a2,0x20
    80004470:	02075713          	srli	a4,a4,0x20
    80004474:	00e587b3          	add	a5,a1,a4
    80004478:	f0f574e3          	bgeu	a0,a5,80004380 <__memmove+0x1c>
    8000447c:	02069613          	slli	a2,a3,0x20
    80004480:	02065613          	srli	a2,a2,0x20
    80004484:	fff64613          	not	a2,a2
    80004488:	00e50733          	add	a4,a0,a4
    8000448c:	00c78633          	add	a2,a5,a2
    80004490:	fff7c683          	lbu	a3,-1(a5)
    80004494:	fff78793          	addi	a5,a5,-1
    80004498:	fff70713          	addi	a4,a4,-1
    8000449c:	00d70023          	sb	a3,0(a4)
    800044a0:	fec798e3          	bne	a5,a2,80004490 <__memmove+0x12c>
    800044a4:	00813403          	ld	s0,8(sp)
    800044a8:	01010113          	addi	sp,sp,16
    800044ac:	00008067          	ret
    800044b0:	02069713          	slli	a4,a3,0x20
    800044b4:	02075713          	srli	a4,a4,0x20
    800044b8:	00170713          	addi	a4,a4,1
    800044bc:	00e50733          	add	a4,a0,a4
    800044c0:	00050793          	mv	a5,a0
    800044c4:	0005c683          	lbu	a3,0(a1)
    800044c8:	00178793          	addi	a5,a5,1
    800044cc:	00158593          	addi	a1,a1,1
    800044d0:	fed78fa3          	sb	a3,-1(a5)
    800044d4:	fee798e3          	bne	a5,a4,800044c4 <__memmove+0x160>
    800044d8:	f89ff06f          	j	80004460 <__memmove+0xfc>

00000000800044dc <__mem_free>:
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00813423          	sd	s0,8(sp)
    800044e4:	01010413          	addi	s0,sp,16
    800044e8:	00001597          	auipc	a1,0x1
    800044ec:	54058593          	addi	a1,a1,1344 # 80005a28 <freep>
    800044f0:	0005b783          	ld	a5,0(a1)
    800044f4:	ff050693          	addi	a3,a0,-16
    800044f8:	0007b703          	ld	a4,0(a5)
    800044fc:	00d7fc63          	bgeu	a5,a3,80004514 <__mem_free+0x38>
    80004500:	00e6ee63          	bltu	a3,a4,8000451c <__mem_free+0x40>
    80004504:	00e7fc63          	bgeu	a5,a4,8000451c <__mem_free+0x40>
    80004508:	00070793          	mv	a5,a4
    8000450c:	0007b703          	ld	a4,0(a5)
    80004510:	fed7e8e3          	bltu	a5,a3,80004500 <__mem_free+0x24>
    80004514:	fee7eae3          	bltu	a5,a4,80004508 <__mem_free+0x2c>
    80004518:	fee6f8e3          	bgeu	a3,a4,80004508 <__mem_free+0x2c>
    8000451c:	ff852803          	lw	a6,-8(a0)
    80004520:	02081613          	slli	a2,a6,0x20
    80004524:	01c65613          	srli	a2,a2,0x1c
    80004528:	00c68633          	add	a2,a3,a2
    8000452c:	02c70a63          	beq	a4,a2,80004560 <__mem_free+0x84>
    80004530:	fee53823          	sd	a4,-16(a0)
    80004534:	0087a503          	lw	a0,8(a5)
    80004538:	02051613          	slli	a2,a0,0x20
    8000453c:	01c65613          	srli	a2,a2,0x1c
    80004540:	00c78633          	add	a2,a5,a2
    80004544:	04c68263          	beq	a3,a2,80004588 <__mem_free+0xac>
    80004548:	00813403          	ld	s0,8(sp)
    8000454c:	00d7b023          	sd	a3,0(a5)
    80004550:	00f5b023          	sd	a5,0(a1)
    80004554:	00000513          	li	a0,0
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret
    80004560:	00872603          	lw	a2,8(a4)
    80004564:	00073703          	ld	a4,0(a4)
    80004568:	0106083b          	addw	a6,a2,a6
    8000456c:	ff052c23          	sw	a6,-8(a0)
    80004570:	fee53823          	sd	a4,-16(a0)
    80004574:	0087a503          	lw	a0,8(a5)
    80004578:	02051613          	slli	a2,a0,0x20
    8000457c:	01c65613          	srli	a2,a2,0x1c
    80004580:	00c78633          	add	a2,a5,a2
    80004584:	fcc692e3          	bne	a3,a2,80004548 <__mem_free+0x6c>
    80004588:	00813403          	ld	s0,8(sp)
    8000458c:	0105053b          	addw	a0,a0,a6
    80004590:	00a7a423          	sw	a0,8(a5)
    80004594:	00e7b023          	sd	a4,0(a5)
    80004598:	00f5b023          	sd	a5,0(a1)
    8000459c:	00000513          	li	a0,0
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret

00000000800045a8 <__mem_alloc>:
    800045a8:	fc010113          	addi	sp,sp,-64
    800045ac:	02813823          	sd	s0,48(sp)
    800045b0:	02913423          	sd	s1,40(sp)
    800045b4:	03213023          	sd	s2,32(sp)
    800045b8:	01513423          	sd	s5,8(sp)
    800045bc:	02113c23          	sd	ra,56(sp)
    800045c0:	01313c23          	sd	s3,24(sp)
    800045c4:	01413823          	sd	s4,16(sp)
    800045c8:	01613023          	sd	s6,0(sp)
    800045cc:	04010413          	addi	s0,sp,64
    800045d0:	00001a97          	auipc	s5,0x1
    800045d4:	458a8a93          	addi	s5,s5,1112 # 80005a28 <freep>
    800045d8:	00f50913          	addi	s2,a0,15
    800045dc:	000ab683          	ld	a3,0(s5)
    800045e0:	00495913          	srli	s2,s2,0x4
    800045e4:	0019049b          	addiw	s1,s2,1
    800045e8:	00048913          	mv	s2,s1
    800045ec:	0c068c63          	beqz	a3,800046c4 <__mem_alloc+0x11c>
    800045f0:	0006b503          	ld	a0,0(a3)
    800045f4:	00852703          	lw	a4,8(a0)
    800045f8:	10977063          	bgeu	a4,s1,800046f8 <__mem_alloc+0x150>
    800045fc:	000017b7          	lui	a5,0x1
    80004600:	0009099b          	sext.w	s3,s2
    80004604:	0af4e863          	bltu	s1,a5,800046b4 <__mem_alloc+0x10c>
    80004608:	02099a13          	slli	s4,s3,0x20
    8000460c:	01ca5a13          	srli	s4,s4,0x1c
    80004610:	fff00b13          	li	s6,-1
    80004614:	0100006f          	j	80004624 <__mem_alloc+0x7c>
    80004618:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000461c:	00852703          	lw	a4,8(a0)
    80004620:	04977463          	bgeu	a4,s1,80004668 <__mem_alloc+0xc0>
    80004624:	00050793          	mv	a5,a0
    80004628:	fea698e3          	bne	a3,a0,80004618 <__mem_alloc+0x70>
    8000462c:	000a0513          	mv	a0,s4
    80004630:	00000097          	auipc	ra,0x0
    80004634:	1f0080e7          	jalr	496(ra) # 80004820 <kvmincrease>
    80004638:	00050793          	mv	a5,a0
    8000463c:	01050513          	addi	a0,a0,16
    80004640:	07678e63          	beq	a5,s6,800046bc <__mem_alloc+0x114>
    80004644:	0137a423          	sw	s3,8(a5)
    80004648:	00000097          	auipc	ra,0x0
    8000464c:	e94080e7          	jalr	-364(ra) # 800044dc <__mem_free>
    80004650:	000ab783          	ld	a5,0(s5)
    80004654:	06078463          	beqz	a5,800046bc <__mem_alloc+0x114>
    80004658:	0007b503          	ld	a0,0(a5)
    8000465c:	00078693          	mv	a3,a5
    80004660:	00852703          	lw	a4,8(a0)
    80004664:	fc9760e3          	bltu	a4,s1,80004624 <__mem_alloc+0x7c>
    80004668:	08e48263          	beq	s1,a4,800046ec <__mem_alloc+0x144>
    8000466c:	4127073b          	subw	a4,a4,s2
    80004670:	02071693          	slli	a3,a4,0x20
    80004674:	01c6d693          	srli	a3,a3,0x1c
    80004678:	00e52423          	sw	a4,8(a0)
    8000467c:	00d50533          	add	a0,a0,a3
    80004680:	01252423          	sw	s2,8(a0)
    80004684:	00fab023          	sd	a5,0(s5)
    80004688:	01050513          	addi	a0,a0,16
    8000468c:	03813083          	ld	ra,56(sp)
    80004690:	03013403          	ld	s0,48(sp)
    80004694:	02813483          	ld	s1,40(sp)
    80004698:	02013903          	ld	s2,32(sp)
    8000469c:	01813983          	ld	s3,24(sp)
    800046a0:	01013a03          	ld	s4,16(sp)
    800046a4:	00813a83          	ld	s5,8(sp)
    800046a8:	00013b03          	ld	s6,0(sp)
    800046ac:	04010113          	addi	sp,sp,64
    800046b0:	00008067          	ret
    800046b4:	000019b7          	lui	s3,0x1
    800046b8:	f51ff06f          	j	80004608 <__mem_alloc+0x60>
    800046bc:	00000513          	li	a0,0
    800046c0:	fcdff06f          	j	8000468c <__mem_alloc+0xe4>
    800046c4:	00002797          	auipc	a5,0x2
    800046c8:	5fc78793          	addi	a5,a5,1532 # 80006cc0 <base>
    800046cc:	00078513          	mv	a0,a5
    800046d0:	00fab023          	sd	a5,0(s5)
    800046d4:	00f7b023          	sd	a5,0(a5)
    800046d8:	00000713          	li	a4,0
    800046dc:	00002797          	auipc	a5,0x2
    800046e0:	5e07a623          	sw	zero,1516(a5) # 80006cc8 <base+0x8>
    800046e4:	00050693          	mv	a3,a0
    800046e8:	f11ff06f          	j	800045f8 <__mem_alloc+0x50>
    800046ec:	00053703          	ld	a4,0(a0)
    800046f0:	00e7b023          	sd	a4,0(a5)
    800046f4:	f91ff06f          	j	80004684 <__mem_alloc+0xdc>
    800046f8:	00068793          	mv	a5,a3
    800046fc:	f6dff06f          	j	80004668 <__mem_alloc+0xc0>

0000000080004700 <__putc>:
    80004700:	fe010113          	addi	sp,sp,-32
    80004704:	00813823          	sd	s0,16(sp)
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	00050793          	mv	a5,a0
    80004714:	fef40593          	addi	a1,s0,-17
    80004718:	00100613          	li	a2,1
    8000471c:	00000513          	li	a0,0
    80004720:	fef407a3          	sb	a5,-17(s0)
    80004724:	fffff097          	auipc	ra,0xfffff
    80004728:	918080e7          	jalr	-1768(ra) # 8000303c <console_write>
    8000472c:	01813083          	ld	ra,24(sp)
    80004730:	01013403          	ld	s0,16(sp)
    80004734:	02010113          	addi	sp,sp,32
    80004738:	00008067          	ret

000000008000473c <__getc>:
    8000473c:	fe010113          	addi	sp,sp,-32
    80004740:	00813823          	sd	s0,16(sp)
    80004744:	00113c23          	sd	ra,24(sp)
    80004748:	02010413          	addi	s0,sp,32
    8000474c:	fe840593          	addi	a1,s0,-24
    80004750:	00100613          	li	a2,1
    80004754:	00000513          	li	a0,0
    80004758:	fffff097          	auipc	ra,0xfffff
    8000475c:	8c4080e7          	jalr	-1852(ra) # 8000301c <console_read>
    80004760:	fe844503          	lbu	a0,-24(s0)
    80004764:	01813083          	ld	ra,24(sp)
    80004768:	01013403          	ld	s0,16(sp)
    8000476c:	02010113          	addi	sp,sp,32
    80004770:	00008067          	ret

0000000080004774 <console_handler>:
    80004774:	fe010113          	addi	sp,sp,-32
    80004778:	00813823          	sd	s0,16(sp)
    8000477c:	00113c23          	sd	ra,24(sp)
    80004780:	00913423          	sd	s1,8(sp)
    80004784:	02010413          	addi	s0,sp,32
    80004788:	14202773          	csrr	a4,scause
    8000478c:	100027f3          	csrr	a5,sstatus
    80004790:	0027f793          	andi	a5,a5,2
    80004794:	06079e63          	bnez	a5,80004810 <console_handler+0x9c>
    80004798:	00074c63          	bltz	a4,800047b0 <console_handler+0x3c>
    8000479c:	01813083          	ld	ra,24(sp)
    800047a0:	01013403          	ld	s0,16(sp)
    800047a4:	00813483          	ld	s1,8(sp)
    800047a8:	02010113          	addi	sp,sp,32
    800047ac:	00008067          	ret
    800047b0:	0ff77713          	andi	a4,a4,255
    800047b4:	00900793          	li	a5,9
    800047b8:	fef712e3          	bne	a4,a5,8000479c <console_handler+0x28>
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	4b8080e7          	jalr	1208(ra) # 80002c74 <plic_claim>
    800047c4:	00a00793          	li	a5,10
    800047c8:	00050493          	mv	s1,a0
    800047cc:	02f50c63          	beq	a0,a5,80004804 <console_handler+0x90>
    800047d0:	fc0506e3          	beqz	a0,8000479c <console_handler+0x28>
    800047d4:	00050593          	mv	a1,a0
    800047d8:	00001517          	auipc	a0,0x1
    800047dc:	a0050513          	addi	a0,a0,-1536 # 800051d8 <_ZZ12printIntegermE6digits+0x1d8>
    800047e0:	fffff097          	auipc	ra,0xfffff
    800047e4:	8d8080e7          	jalr	-1832(ra) # 800030b8 <__printf>
    800047e8:	01013403          	ld	s0,16(sp)
    800047ec:	01813083          	ld	ra,24(sp)
    800047f0:	00048513          	mv	a0,s1
    800047f4:	00813483          	ld	s1,8(sp)
    800047f8:	02010113          	addi	sp,sp,32
    800047fc:	ffffe317          	auipc	t1,0xffffe
    80004800:	4b030067          	jr	1200(t1) # 80002cac <plic_complete>
    80004804:	fffff097          	auipc	ra,0xfffff
    80004808:	1bc080e7          	jalr	444(ra) # 800039c0 <uartintr>
    8000480c:	fddff06f          	j	800047e8 <console_handler+0x74>
    80004810:	00001517          	auipc	a0,0x1
    80004814:	ac850513          	addi	a0,a0,-1336 # 800052d8 <digits+0x78>
    80004818:	fffff097          	auipc	ra,0xfffff
    8000481c:	844080e7          	jalr	-1980(ra) # 8000305c <panic>

0000000080004820 <kvmincrease>:
    80004820:	fe010113          	addi	sp,sp,-32
    80004824:	01213023          	sd	s2,0(sp)
    80004828:	00001937          	lui	s2,0x1
    8000482c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004830:	00813823          	sd	s0,16(sp)
    80004834:	00113c23          	sd	ra,24(sp)
    80004838:	00913423          	sd	s1,8(sp)
    8000483c:	02010413          	addi	s0,sp,32
    80004840:	01250933          	add	s2,a0,s2
    80004844:	00c95913          	srli	s2,s2,0xc
    80004848:	02090863          	beqz	s2,80004878 <kvmincrease+0x58>
    8000484c:	00000493          	li	s1,0
    80004850:	00148493          	addi	s1,s1,1
    80004854:	fffff097          	auipc	ra,0xfffff
    80004858:	4bc080e7          	jalr	1212(ra) # 80003d10 <kalloc>
    8000485c:	fe991ae3          	bne	s2,s1,80004850 <kvmincrease+0x30>
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	00813483          	ld	s1,8(sp)
    8000486c:	00013903          	ld	s2,0(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret
    80004878:	01813083          	ld	ra,24(sp)
    8000487c:	01013403          	ld	s0,16(sp)
    80004880:	00813483          	ld	s1,8(sp)
    80004884:	00013903          	ld	s2,0(sp)
    80004888:	00000513          	li	a0,0
    8000488c:	02010113          	addi	sp,sp,32
    80004890:	00008067          	ret
	...
